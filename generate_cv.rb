#!/usr/bin/env ruby
# frozen_string_literal: true

# CV Generator - Converts Markdown CV to styled HTML/PDF
#
# Usage:
#   ruby generate_cv.rb                    # Generate from master CV
#   ruby generate_cv.rb --unosquare        # Generate Unosquare version
#   ruby generate_cv.rb --tech-only        # Technical profile only
#   ruby generate_cv.rb --output=name.html # Custom output filename
#
# Requirements:
#   - Ruby 2.7+
#   - Pandoc (for LaTeX PDF generation)
#   - Optional: LaTeX (for high-quality PDFs)

require 'fileutils'
require 'optparse'
require 'date'

class CVGenerator
  SCRIPT_DIR = File.dirname(File.expand_path(__FILE__))

  DEFAULT_OPTIONS = {
    source: 'angel_mora_master_cv.md',
    output: nil,
    format: 'html',
    include_tech_stack: true,
    include_methodology_notes: false,
    profile_type: 'both', # 'general', 'technical', 'both'
    color_accent: '#2563eb'
  }.freeze

  def initialize(options = {})
    @options = DEFAULT_OPTIONS.merge(options)
    @source_path = File.join(SCRIPT_DIR, @options[:source])
  end

  def generate
    puts "Generating CV from #{@options[:source]}..."

    content = File.read(@source_path)

    # Remove HTML comments (methodology notes, config)
    content = content.gsub(/<!--[\s\S]*?-->/, '') unless @options[:include_methodology_notes]

    case @options[:format]
    when 'html'
      generate_html(content)
    when 'pdf'
      generate_pdf(content)
    when 'both'
      generate_html(content)
      generate_pdf(content)
    end

    puts 'Done!'
  end

  private

  def generate_html(content)
    output_file = @options[:output] || 'angel_mora_cv.html'
    output_path = File.join(SCRIPT_DIR, output_file)

    # Convert markdown to HTML body
    html_body = markdown_to_html(content)

    # Wrap in full HTML document
    html_doc = build_html_document(html_body)

    File.write(output_path, html_doc)
    puts "Generated: #{output_path}"
  end

  def generate_pdf(content)
    # Check for LaTeX
    latex_available = system('which xelatex > /dev/null 2>&1') ||
                      system('which pdflatex > /dev/null 2>&1')

    if latex_available
      generate_pdf_latex(content)
    else
      puts 'LaTeX not found. Generating HTML instead.'
      puts 'Install BasicTeX: brew install --cask basictex'
      generate_html(content)
    end
  end

  def generate_pdf_latex(content)
    output_file = @options[:output]&.sub(/\.html$/, '.pdf') || 'angel_mora_cv.pdf'
    output_path = File.join(SCRIPT_DIR, output_file)

    # Create temp markdown file without comments
    temp_md = File.join(SCRIPT_DIR, '.temp_cv.md')
    File.write(temp_md, content)

    # Pandoc command with professional LaTeX template
    cmd = [
      'pandoc',
      temp_md,
      '-o', output_path,
      '--pdf-engine=xelatex',
      '-V', 'geometry:margin=0.75in',
      '-V', 'fontsize=11pt',
      '-V', 'mainfont=Helvetica Neue',
      '-V', 'monofont=SF Mono',
      '-V', 'linkcolor=blue',
      '--highlight-style=tango'
    ].join(' ')

    system(cmd)
    FileUtils.rm_f(temp_md)

    puts "Generated: #{output_path}"
  end

  def markdown_to_html(content)
    # Simple markdown to HTML conversion
    # For production, consider using a proper parser like Kramdown

    html = content.dup

    # Headers
    html.gsub!(/^# (.+)$/, '<h1>\1</h1>')
    html.gsub!(/^## (.+)$/, '<h2>\1</h2>')
    html.gsub!(/^### (.+)$/, '<h3>\1</h3>')
    html.gsub!(/^#### (.+)$/, '<h4>\1</h4>')

    # Bold and italic
    html.gsub!(/\*\*(.+?)\*\*/, '<strong>\1</strong>')
    html.gsub!(/\*(.+?)\*/, '<em>\1</em>')

    # Links
    html.gsub!(/\[(.+?)\]\((.+?)\)/, '<a href="\2">\1</a>')

    # Horizontal rules
    html.gsub!(/^---+$/, '<hr>')

    # Lists
    html.gsub!(/^- (.+)$/, '<li>\1</li>')

    # Wrap consecutive li elements in ul
    html.gsub!(%r{((?:<li>.+</li>\n?)+)}) do |match|
      "<ul class=\"achievements\">#{match}</ul>"
    end

    # Paragraphs (lines that aren't already wrapped)
    lines = html.split("\n")
    lines = lines.map do |line|
      if line.strip.empty? ||
         line.start_with?('<h') ||
         line.start_with?('<ul') ||
         line.start_with?('<li') ||
         line.start_with?('</') ||
         line.start_with?('<hr')
        line
      else
        "<p>#{line}</p>"
      end
    end

    lines.join("\n")
  end

  def build_html_document(body)
    css = File.read(File.join(SCRIPT_DIR, 'cv_styles.css'))

    <<~HTML
      <!DOCTYPE html>
      <html lang="en">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Angel Mora - Senior Ruby on Rails Developer</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
        <style>
          #{css}
        </style>
      </head>
      <body>
        #{body}
      #{'  '}
        <footer class="no-print" style="margin-top: 48px; padding-top: 24px; border-top: 1px solid #e5e5e5; font-size: 12px; color: #6b6b6b;">
          Generated on #{Date.today.strftime('%B %d, %Y')} |#{' '}
          <a href="javascript:window.print()">Print / Save as PDF</a>
        </footer>
      </body>
      </html>
    HTML
  end
end

# CLI
if __FILE__ == $PROGRAM_NAME
  options = {}

  OptionParser.new do |opts|
    opts.banner = 'Usage: ruby generate_cv.rb [options]'

    opts.on('--unosquare', 'Use Unosquare CV version') do
      options[:source] = 'angel_mora_unosquare.md'
    end

    opts.on('--output=FILE', 'Output filename') do |f|
      options[:output] = f
    end

    opts.on('--format=FORMAT', 'Output format: html, pdf, both') do |f|
      options[:format] = f
    end

    opts.on('--tech-only', 'Include only technical profile') do
      options[:profile_type] = 'technical'
    end

    opts.on('-h', '--help', 'Show this help') do
      puts opts
      exit
    end
  end.parse!

  generator = CVGenerator.new(options)
  generator.generate
end

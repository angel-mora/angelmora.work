#!/usr/bin/env ruby
# frozen_string_literal: true

# Cover Letter Generator - Converts Markdown Cover Letter to styled HTML/PDF
#
# Usage:
#   ruby generate_cover_letter.rb cover-letter-scribd-api-platform.md
#   ruby generate_cover_letter.rb --format=pdf cover-letter-scribd-api-platform.md
#
# Requirements:
#   - Ruby 2.7+
#   - Pandoc (for LaTeX PDF generation)
#   - Optional: LaTeX (for high-quality PDFs)

require 'fileutils'
require 'optparse'
require 'date'

class CoverLetterGenerator
  SCRIPT_DIR = File.dirname(File.expand_path(__FILE__))
  VAULT_ROOT = File.expand_path('../../..', SCRIPT_DIR)

  DEFAULT_OPTIONS = {
    format: 'both', # html, pdf, both
    output: nil
  }.freeze

  def initialize(source_file, options = {})
    @options = DEFAULT_OPTIONS.merge(options)
    @source_file = source_file

    # Look for source file in multiple locations
    @source_path = find_source_file(source_file)

    return if @source_path && File.exist?(@source_path)

    raise "Source file not found: #{source_file}"
  end

  def generate
    puts "Generating cover letter from #{File.basename(@source_path)}..."

    content = File.read(@source_path)

    # Clean up content for generation
    content = prepare_content(content)

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

  def find_source_file(filename)
    search_paths = [
      File.join(SCRIPT_DIR, filename),
      File.join(VAULT_ROOT, filename),
      File.join(VAULT_ROOT, '2_areas/JobSearch', filename),
      filename # absolute path
    ]

    search_paths.find { |path| File.exist?(path) }
  end

  def prepare_content(content)
    # Remove markdown header if present
    content = content.gsub(/^# Cover Letter.*?\n\n/, '')

    # Remove horizontal rules (they're styling elements)
    content = content.gsub(/^---+$/, '')

    content.strip
  end

  def generate_html(content)
    base_name = File.basename(@source_path, '.md')
    output_file = @options[:output] || "#{base_name}.html"
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
    base_name = File.basename(@source_path, '.md')
    output_file = @options[:output]&.sub(/\.html$/, '.pdf') || "#{base_name}.pdf"
    output_path = File.join(SCRIPT_DIR, output_file)

    # Create temp markdown file
    temp_md = File.join(SCRIPT_DIR, '.temp_cover_letter.md')
    File.write(temp_md, content)

    # Pandoc command with professional LaTeX template
    cmd = [
      'pandoc',
      temp_md,
      '-o', output_path,
      '--pdf-engine=xelatex',
      '-V', 'geometry:margin=1in',
      '-V', 'fontsize=12pt',
      '-V', 'linkcolor=blue'
    ].join(' ')

    system(cmd)
    FileUtils.rm_f(temp_md)

    puts "Generated: #{output_path}"
  end

  def markdown_to_html(content)
    html = content.dup

    # Headers
    html.gsub!(/^# (.+)$/, '<h1>\1</h1>')
    html.gsub!(/^## (.+)$/, '<h2>\1</h2>')
    html.gsub!(/^### (.+)$/, '<h3>\1</h3>')

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
      "<ul>#{match}</ul>"
    end

    # Contact information detection and formatting
    html.gsub!(/^(\*\*Angel Mora\*\*.+?)(?=\n\n|\n---|\n<h)/m) do |match|
      "<div class=\"contact-info\">#{match}</div>"
    end

    # Paragraphs (lines that aren't already wrapped)
    lines = html.split("\n")
    lines = lines.map do |line|
      if line.strip.empty? ||
         line.start_with?('<h') ||
         line.start_with?('<ul') ||
         line.start_with?('<li') ||
         line.start_with?('</') ||
         line.start_with?('<hr') ||
         line.start_with?('<div')
        line
      else
        "<p>#{line}</p>"
      end
    end

    lines.join("\n")
  end

  def build_html_document(body)
    css = File.read(File.join(SCRIPT_DIR, 'cover_letter_styles.css'))

    <<~HTML
      <!DOCTYPE html>
      <html lang="en">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cover Letter - Angel Mora</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
        <style>
          #{css}
        </style>
      </head>
      <body>
        #{body}

        <footer class="no-print">
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
    opts.banner = 'Usage: ruby generate_cover_letter.rb [options] <markdown_file>'

    opts.on('--format=FORMAT', 'Output format: html, pdf, both (default: both)') do |f|
      options[:format] = f
    end

    opts.on('--output=FILE', 'Output filename') do |f|
      options[:output] = f
    end

    opts.on('-h', '--help', 'Show this help') do
      puts opts
      exit
    end
  end.parse!

  source_file = ARGV.first

  unless source_file
    puts 'Error: Please provide a markdown file'
    puts 'Usage: ruby generate_cover_letter.rb <markdown_file>'
    exit 1
  end

  generator = CoverLetterGenerator.new(source_file, options)
  generator.generate
end

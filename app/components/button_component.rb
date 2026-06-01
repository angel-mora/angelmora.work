# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  VARIANT_STYLES = {
    primary: "bg-zinc-800 font-semibold text-zinc-100 hover:bg-zinc-700 active:bg-zinc-800 active:text-zinc-100/70 dark:bg-zinc-700 dark:hover:bg-zinc-600 dark:active:bg-zinc-700 dark:active:text-zinc-100/70",
    secondary: "bg-zinc-50 font-medium text-zinc-900 hover:bg-zinc-100 active:bg-zinc-100 active:text-zinc-900/60 dark:bg-zinc-800/50 dark:text-zinc-300 dark:hover:bg-zinc-800 dark:hover:text-zinc-50 dark:active:bg-zinc-800/50 dark:active:text-zinc-50/70"
  }.freeze

  def initialize(variant: :primary, href: nil, **html_options)
    @variant = variant
    @href = href
    @html_options = html_options
  end

  def call
    base = "inline-flex items-center gap-2 justify-center rounded-md py-2 px-3 text-sm outline-offset-2 transition active:transition-none"
    classes = "#{base} #{VARIANT_STYLES[@variant]} #{@html_options[:class]}".strip

    if @href
      tag.a(href: @href, class: classes, **@html_options.except(:class)) { content }
    else
      tag.button(class: classes, **@html_options.except(:class)) { content }
    end
  end
end
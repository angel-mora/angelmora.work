# frozen_string_literal: true

class Card::EyebrowComponent < ViewComponent::Base
  def initialize(decorate: false, as: "p", **html_options)
    @decorate = decorate
    @as = as
    @html_options = html_options
  end

  def call
    tag.send(@as, class: eyebrow_classes, **@html_options) do
      if @decorate
        safe_join([
          tag.span(class: "absolute inset-y-0 left-0 flex items-center", aria_hidden: true) do
            tag.span(class: "h-4 w-0.5 rounded-full bg-zinc-200 dark:bg-zinc-500")
          end,
          content
        ])
      else
        content
      end
    end
  end

  private

  def eyebrow_classes
    "relative z-10 order-first mb-3 flex items-center text-sm text-zinc-400 dark:text-zinc-500 #{@decorate ? 'pl-3.5' : ''} #{@html_options[:class]}".strip
  end
end
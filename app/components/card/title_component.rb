# frozen_string_literal: true

class Card::TitleComponent < ViewComponent::Base
  def initialize(href: nil)
    @href = href
  end

  def call
    tag.h2(class: "text-base font-semibold tracking-tight text-zinc-800 dark:text-zinc-100") do
      if @href
        link = tag.a(href: @href, class: "pointer-events-auto") { content }
        overlay = tag.div(class: "absolute -inset-x-4 -inset-y-6 z-0 scale-95 bg-zinc-50 opacity-0 transition group-hover:scale-100 group-hover:opacity-100 dark:bg-zinc-800/50 sm:-inset-x-6 sm:rounded-2xl")
        hit_area = tag.span(class: "absolute -inset-x-4 -inset-y-6 z-20 sm:-inset-x-6 sm:rounded-2xl")
        safe_join([overlay, link, hit_area])
      else
        content
      end
    end
  end
end
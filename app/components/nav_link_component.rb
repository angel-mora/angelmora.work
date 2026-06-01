# frozen_string_literal: true

class NavLinkComponent < ViewComponent::Base
  def initialize(href:, current:)
    @href = href
    @current = current
  end

  def call
    classes = if @current
                "relative block px-3 py-2 transition text-teal-500 dark:text-teal-400"
              else
                "relative block px-3 py-2 transition hover:text-teal-500 dark:hover:text-teal-400"
              end

    tag.li do
      safe_join([
        tag.a(href: @href, class: classes) { content },
        (@current ? tag.span(class: "absolute inset-x-1 -bottom-px h-px bg-gradient-to-r from-teal-500/0 via-teal-500/40 to-teal-500/0 dark:from-teal-400/0 dark:via-teal-400/40 dark:to-teal-400/0") : "")
      ])
    end
  end
end
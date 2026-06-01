# frozen_string_literal: true

module ApplicationHelper
  def nav_link(name, path, current: false)
    classes = if current
                "relative block px-3 py-2 transition text-teal-500 dark:text-teal-400"
              else
                "relative block px-3 py-2 transition hover:text-teal-500 dark:hover:text-teal-400"
              end

    active_indicator = current ? '<span class="absolute inset-x-1 -bottom-px h-px bg-gradient-to-r from-teal-500/0 via-teal-500/40 to-teal-500/0 dark:from-teal-400/0 dark:via-teal-400/40 dark:to-teal-400/0"></span>'.html_safe : ""

    tag.li do
      safe_join([
        link_to(name, path, class: classes),
        active_indicator
      ])
    end
  end
end
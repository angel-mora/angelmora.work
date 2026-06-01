# frozen_string_literal: true

class RoleComponent < ViewComponent::Base
  def initialize(company:, title:, start_date:, end_date:, logo_initial: nil, logo_alt: nil)
    @company = company
    @title = title
    @start_date = start_date
    @end_date = end_date
    @logo_initial = logo_initial || company[0]
    @logo_alt = logo_alt || company
  end

  def start_label
    @start_date.is_a?(Hash) ? @start_date[:label] : @start_date
  end

  def end_label
    @end_date.is_a?(Hash) ? @end_date[:label] : @end_date
  end

  def call
    tag.li(class: "flex gap-4") do
      safe_join([
        tag.div(class: "relative mt-1 flex h-10 w-10 flex-none items-center justify-center rounded-full shadow-md shadow-zinc-800/5 ring-1 ring-zinc-900/5 dark:border dark:border-zinc-700/50 dark:bg-zinc-800 dark:ring-0") do
          tag.span(@logo_initial, class: "h-7 w-7 flex items-center justify-center text-sm font-bold text-zinc-600 dark:text-zinc-300")
        end,
        tag.dl(class: "flex flex-auto flex-wrap gap-x-2") do
          safe_join([
            tag.dt("Company", class: "sr-only"),
            tag.dd(@company, class: "w-full flex-none text-sm font-medium text-zinc-900 dark:text-zinc-100"),
            tag.dt("Role", class: "sr-only"),
            tag.dd(@title, class: "text-xs text-zinc-500 dark:text-zinc-400"),
            tag.dt("Date", class: "sr-only"),
            tag.dd(class: "ml-auto text-xs text-zinc-400 dark:text-zinc-500", aria_label: "#{start_label} until #{end_label}") do
              safe_join([
                tag.time(start_label, datetime: start_label),
                " ",
                tag.span("—", aria_hidden: true),
                " ",
                tag.time(end_label, datetime: end_label)
              ])
            end
          ])
        end
      ])
    end
  end
end
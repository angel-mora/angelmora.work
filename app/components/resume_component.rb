# frozen_string_literal: true

class ResumeComponent < ViewComponent::Base
  ROLES = [
    { company: "InfoTech Research Group", title: "Fullstack Ruby on Rails Developer", start_date: "2019", end_date: { label: "Present", datetime: "2026" }, logo_initial: "I" },
    { company: "Aleph Risk Intelligence", title: "Ruby Developer", start_date: "2021", end_date: "2021", logo_initial: "A" },
    { company: "SEPROBAN", title: "Fullstack Ruby on Rails Developer", start_date: "2019", end_date: "2021", logo_initial: "S" },
    { company: "AT&T", title: "Tech Support and Sales Agent", start_date: "2019", end_date: "2019", logo_initial: "A" }
  ].freeze

  def call
    tag.div(class: "rounded-2xl border border-zinc-100 p-6 dark:border-zinc-700/40") do
      safe_join([
        tag.h2(class: "flex text-sm font-semibold text-zinc-900 dark:text-zinc-100") do
          safe_join([
            briefcase_icon,
            tag.span("Work", class: "ml-3")
          ])
        end,
        tag.ol(class: "mt-6 space-y-4") do
          safe_join(ROLES.map { |r| render(RoleComponent.new(**r)) })
        end,
        tag.div(class: "mt-6") do
          render(ButtonComponent.new(variant: :secondary, href: "/angel_mora_cv.pdf", class: "group w-full")) do
            safe_join(["Download CV ", arrow_down_icon])
          end
        end
      ])
    end
  end

  private

  def briefcase_icon
    tag.svg(viewbox: "0 0 24 24", fill: "none", stroke_width: "1.5", stroke_linecap: "round", stroke_linejoin: "round", aria_hidden: true, class: "h-6 w-6 flex-none") do
      '<path d="M2.75 9.75a3 3 0 0 1 3-3h12.5a3 3 0 0 1 3 3v8.5a3 3 0 0 1-3 3H5.75a3 3 0 0 1-3-3v-8.5Z" class="fill-zinc-100 stroke-zinc-400 dark:fill-zinc-100/10 dark:stroke-zinc-500"/><path d="M3 14.25h6.249c.484 0 .952-.002 1.316.319l.777.682a.996.996 0 0 0 1.316 0l.777-.682c.364-.32.832-.319 1.316-.319H21M8.75 6.5V4.75a2 2 0 0 1 2-2h2.5a2 2 0 0 1 2 2V6.5" class="stroke-zinc-400 dark:stroke-zinc-500"/>'.html_safe
    end
  end

  def arrow_down_icon
    tag.svg(viewbox: "0 0 16 16", fill: "none", class: "h-4 w-4 stroke-zinc-400 transition group-active:stroke-zinc-600 dark:group-hover:stroke-zinc-50 dark:group-active:stroke-zinc-50") do
      '<path d="M4.75 8.75 8 12.25m0 0 3.25-3.5M8 12.25v-8.5" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>'.html_safe
    end
  end
end
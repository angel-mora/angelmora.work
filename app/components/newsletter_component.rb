# frozen_string_literal: true

class NewsletterComponent < ViewComponent::Base
  def call
    tag.form(action: "/thank-you", class: "rounded-2xl border border-zinc-100 p-6 dark:border-zinc-700/40") do
      safe_join([
        tag.h2(class: "flex text-sm font-semibold text-zinc-900 dark:text-zinc-100") do
          safe_join([mail_icon, tag.span("Stay up to date", class: "ml-3")])
        end,
        tag.p("Get notified when I publish something new, and unsubscribe at any time.", class: "mt-2 text-sm text-zinc-600 dark:text-zinc-400"),
        tag.div(class: "mt-6 flex") do
          safe_join([
            tag.input(type: "email", placeholder: "Email address", required: true, aria_label: "Email address", class: "min-w-0 flex-auto appearance-none rounded-md border border-zinc-900/10 bg-white px-3 py-[calc(theme(spacing.2)-1px)] shadow-md shadow-zinc-800/5 placeholder:text-zinc-400 focus:border-teal-500 focus:outline-none focus:ring-4 focus:ring-teal-500/10 dark:border-zinc-700 dark:bg-zinc-700/[0.15] dark:text-zinc-200 dark:placeholder:text-zinc-500 dark:focus:border-teal-400 dark:focus:ring-teal-400/10 sm:text-sm"),
            render(ButtonComponent.new { "Join" })
          ])
        end
      ])
    end
  end

  private

  def mail_icon
    tag.svg(viewbox: "0 0 24 24", fill: "none", stroke_width: "1.5", stroke_linecap: "round", stroke_linejoin: "round", aria_hidden: true, class: "h-6 w-6 flex-none") do
      '<path d="M2.75 7.75a3 3 0 0 1 3-3h12.5a3 3 0 0 1 3 3v8.5a3 3 0 0 1-3 3H5.75a3 3 0 0 1-3-3v-8.5Z" class="fill-zinc-100 stroke-zinc-400 dark:fill-zinc-100/10 dark:stroke-zinc-500"/><path d="m4 6 6.024 5.479a2.915 2.915 0 0 0 3.952 0L20 6" class="stroke-zinc-400 dark:stroke-zinc-500"/>'.html_safe
    end
  end
end
# frozen_string_literal: true

class SectionComponent < ViewComponent::Base
  def initialize(title:)
    @title = title
  end

  def call
    tag.section(aria_labelledby: SecureRandom.hex(4), class: "md:border-l md:border-zinc-100 md:pl-6 md:dark:border-zinc-700/40") do
      tag.div(class: "grid max-w-3xl grid-cols-1 items-baseline gap-y-8 md:grid-cols-4") do
        safe_join([
          tag.h2(@title, class: "text-sm font-semibold text-zinc-800 dark:text-zinc-100"),
          tag.div(class: "md:col-span-3") { content }
        ])
      end
    end
  end
end
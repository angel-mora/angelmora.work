# frozen_string_literal: true

class SimpleLayoutComponent < ViewComponent::Base
  def initialize(title:, intro:)
    @title = title
    @intro = intro
  end

  def call
    render(ContainerComponent.new(class: "mt-16 sm:mt-32")) do
      safe_join([
        tag.header(class: "max-w-2xl") do
          safe_join([
            tag.h1(@title, class: "text-4xl font-bold tracking-tight text-zinc-800 dark:text-zinc-100 sm:text-5xl"),
            tag.p(@intro, class: "mt-6 text-base text-zinc-600 dark:text-zinc-400")
          ])
        end,
        tag.div(class: "mt-16 sm:mt-20") { content }
      ])
    end
  end
end
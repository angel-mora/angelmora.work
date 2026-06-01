# frozen_string_literal: true

class ContainerComponent < ViewComponent::Base
  def initialize(**html_options)
    @html_options = html_options
  end

  def call
    tag.div(class: "container-outer #{@html_options[:class]}".strip, **@html_options.except(:class)) do
      tag.div(class: "mx-auto w-full max-w-7xl lg:px-8") do
        tag.div(class: "container-inner relative px-4 sm:px-8 lg:px-12") do
          tag.div(class: "mx-auto max-w-2xl lg:max-w-5xl") do
            content
          end
        end
      end
    end
  end
end
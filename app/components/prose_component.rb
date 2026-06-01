# frozen_string_literal: true

class ProseComponent < ViewComponent::Base
  def initialize(**html_options)
    @html_options = html_options
  end

  def call
    tag.div(class: "prose dark:prose-invert #{@html_options[:class]}".strip, **@html_options.except(:class)) do
      content
    end
  end
end
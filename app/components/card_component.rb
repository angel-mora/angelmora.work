# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(as: "div", href: nil, **html_options)
    @as = as
    @href = href
    @html_options = html_options
  end

  def call
    tag.send(@as, class: "group relative flex flex-col items-start #{@html_options[:class]}".strip, **@html_options.except(:class)) do
      content
    end
  end
end
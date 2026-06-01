# frozen_string_literal: true

class SocialLinkComponent < ViewComponent::Base
  def initialize(href:, label:)
    @href = href
    @label = label
  end

  def call
    tag.a(href: @href, class: "group -m-1 p-1", aria_label: @label) do
      content || tag.span(@label)
    end
  end
end
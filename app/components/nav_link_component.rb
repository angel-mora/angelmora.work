# frozen_string_literal: true

class NavLinkComponent < ViewComponent::Base
  def initialize(name:, href:, current:)
    @name = name
    @href = href
    @current = current
  end
end

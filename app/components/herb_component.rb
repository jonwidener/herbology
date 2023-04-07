# frozen_string_literal: true

class HerbComponent < ViewComponent::Base
  def initialize(latin_name:)
    @latin_name = latin_name
  end

end

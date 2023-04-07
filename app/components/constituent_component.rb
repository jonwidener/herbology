# frozen_string_literal: true

class ConstituentComponent < ViewComponent::Base
    def initialize(constituent:)
        @constituent = constituent
    end
end

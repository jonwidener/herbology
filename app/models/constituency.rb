class Constituency < ApplicationRecord
    has_and_belongs_to_many :herbs
end

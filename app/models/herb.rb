class Herb < ApplicationRecord
    has_and_belongs_to_many :constituencies
end

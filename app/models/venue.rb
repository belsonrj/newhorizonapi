class Venue < ApplicationRecord
    validates :name, presence: true 
    belongs_to :show
end

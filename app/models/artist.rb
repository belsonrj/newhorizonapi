class Artist < ApplicationRecord
    validates :name, presence: true 
    belongs_to :show
end

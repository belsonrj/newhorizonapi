class Artist < ApplicationRecord
    validates :name, uniqueness: true, presence: true 
    belongs_to :event, optional: true
end

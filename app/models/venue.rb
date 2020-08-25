class Venue < ApplicationRecord
    validates :name, uniqueness: true, presence: true 
    belongs_to :user, optional: true
    has_many :events, dependent: :destroy 
    has_many :artists, through: :events, dependent: :destroy
end

class Artist < ApplicationRecord
    validates :name, uniqueness: true, presence: true 
    belongs_to :user, optional: true
    has_many :events, dependent: :destroy 
    has_many :venues, through: :events, dependent: :destroy 
    accepts_nested_attributes_for :venues
end

class Venue < ApplicationRecord
    validates :name, uniqueness: true, presence: true 
    belongs_to :user, optional: true
    belongs_to :event, optional: true

end

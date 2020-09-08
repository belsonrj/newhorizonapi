class Venue < ApplicationRecord
    #validates :name, presence: true 
    belongs_to :show
    validates_presence_of :show

    enum item_type: {item: 0, heading: 1} 
end

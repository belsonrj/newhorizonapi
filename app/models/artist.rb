class Artist < ApplicationRecord
    #validates :name, presence: true 
    belongs_to :show
    validates_presence_of :show
end

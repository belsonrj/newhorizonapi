class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :event
    #has_many :users through: :events
    #accepts_nested_attributes_for :user
end

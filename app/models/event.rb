class Event < ApplicationRecord
  belongs_to :artist, dependent: :destroy 
  belongs_to :venue, dependent: :destroy 
  has_many :comments
  has_many :users, through: :comments
end

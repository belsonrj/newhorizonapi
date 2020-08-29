class Event < ApplicationRecord
  belongs_to :user
  has_many :artists
  has_many :venues
  has_many :comments
  #has_many :users, through: :comments
end

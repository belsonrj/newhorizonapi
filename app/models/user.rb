class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true, presence: true 
    has_many :artists, dependent: :destroy
    accepts_nested_attributes_for :artists
    has_many :venues, dependent: :destroy
    accepts_nested_attributes_for :venues
    has_many :artist_venues, dependent: :destroy
    has_many :collected_artists, through: :events, source: :artist, dependent: :destroy
    has_many :collected_venues, through: :events, source: :venue, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :events, through: :comments
end

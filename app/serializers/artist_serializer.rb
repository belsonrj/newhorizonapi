class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :times_seen, :met
  has_many :venues
  has_many :events
end

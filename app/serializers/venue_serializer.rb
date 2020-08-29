class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :locale, :venue_type, :layout, :sound, :prices
  has_many :artists
  has_many :events
end

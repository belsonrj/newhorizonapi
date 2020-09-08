class ShowSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :date, :comment, :img_url
  has_many :artists, serializer: ArtistSerializer
  has_many :venues, serializer: VenueSerializer
end

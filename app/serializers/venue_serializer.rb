class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :locale, :venue_type, :comment
end

class VenueSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :locale, :venue_type, :comment, :show_id
end

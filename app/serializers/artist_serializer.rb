class ArtistSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :genre, :comment, :show_id
end

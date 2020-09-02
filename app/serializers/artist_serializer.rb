class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :comment, :show_id
end

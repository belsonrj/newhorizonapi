class ShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :comment, :img_url
  has_many :artists
  has_many :venues
end

class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :img_url, :comment
  has_many :artists
  has_many :venues
end

class EventSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_many :comments
end

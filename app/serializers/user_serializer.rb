class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password
  has_many :events
  has_many :artists
  has_many :venues
  has_many :comments
end

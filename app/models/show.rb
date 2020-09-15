class Show < ApplicationRecord
  has_many :artists, dependent: :destroy
  accepts_nested_attributes_for :artists, allow_destroy: true
  has_many :venues, dependent: :destroy
  accepts_nested_attributes_for :venues, allow_destroy: true

end

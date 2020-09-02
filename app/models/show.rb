class Show < ApplicationRecord
  has_many :artists, dependent: :destroy
  has_many :venues, dependent: :destroy
end

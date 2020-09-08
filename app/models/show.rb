class Show < ApplicationRecord
  has_many :artists, dependent: :destroy
  accepts_nested_attributes_for :artists, allow_destroy: true
  has_many :venues, dependent: :destroy
  accepts_nested_attributes_for :venues, allow_destroy: true

  #def as_json(options={})
  #  options[:methods] = [:artists]
  #  super
  #end

  #def artists
  #  "#{artists}"
  #end

  #enum item_type: {item: 0, heading: 1} 
end

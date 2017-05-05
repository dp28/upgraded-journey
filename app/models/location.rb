class Location < ApplicationRecord

  validates :latitude, :longitude, presence: true
  validates :latitude, :longitude, numericality: {
    less_than_or_equal_to: 180,
    more_than_or_equal_to: -180
  }
end

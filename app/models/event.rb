class Event < ApplicationRecord

  belongs_to :location
  validates :location, :start_time, :end_time, presence: true

end

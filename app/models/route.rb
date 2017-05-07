class Route < ApplicationRecord

  TRANSPORT_MODES = %w[any bike bus car train walk other]

  belongs_to :user
  belongs_to :origin_location, class_name: Location
  belongs_to :destination_location, class_name: Location
  has_many :alerts

  alias origin origin_location
  alias destination destination_location

  validates :origin, :destination, :transport_mode, presence: true
  validates :transport_mode, inclusion: { in: TRANSPORT_MODES }

  accepts_nested_attributes_for :origin_location
  accepts_nested_attributes_for :destination_location

end

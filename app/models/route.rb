class Route < ApplicationRecord

  TRANSPORT_MODES = %w[any bike bus car train walk other]

  belongs_to :user
  belongs_to :origin_location
  belongs_to :destination_location

  alias origin origin_location
  alias destination destination_location

  validates :origin, :destination, :transport_mode, presence: true
  validates :transport_mode, inclusion: { in: TRANSPORT_MODES }

end

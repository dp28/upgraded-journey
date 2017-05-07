class Alert < ApplicationRecord

  UNITS_TO_NAMES = {
    'hours' => 'hours before',
    'days' => 'days before',
    'weeks' => 'weeks before',
    'ASAP' => 'whenever a new event is added'
  }

  UNITS = UNITS_TO_NAMES.keys

  belongs_to :route
  validates :unit, presence: true, inclusion: { in: UNITS }
  validates :value, presence: true, unless: -> { unit == 'ASAP' }
end

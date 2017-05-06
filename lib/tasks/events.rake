require 'csv'

namespace :events do
  task populate: :environment do
    CSV.read('./events.csv')[1..-1].each do |line|
      start_time = line[3] ? DateTime.parse(line[3]) : nil
      end_time = line[4] ? DateTime.parse(line[4]) : nil
      event = Event.find_or_initialize_by(
        description: line[0],
        start_time: start_time,
        end_time: end_time
      )

      unless event.persisted?
        print '<'
        event.location = Location.create(latitude: line[1].to_f, longitude: line[2].to_f)
        event.save!
      else
        print '.'
      end
    end

  end
end

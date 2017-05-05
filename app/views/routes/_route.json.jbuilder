json.extract! route, :id, :origin_location_id, :destination_location_id, :transport_mode, :created_at, :updated_at
json.url route_url(route, format: :json)
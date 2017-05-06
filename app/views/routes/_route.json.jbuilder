json.extract! route, :id, :origin_location_id, :destination_location_id, :transport_mode, :created_at, :updated_at
json.url user_route_url(current_user, route, format: :json)

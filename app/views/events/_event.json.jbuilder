json.extract! event, :id, :name, :slug, :venue, :address, :city, :state, :country, :event_at, :latitude, :longitude, :description, :created_at, :updated_at
json.url event_url(event, format: :json)

json.extract! event, :id, :title, :description, :date, :lat, :long, :created_at, :updated_at
json.url event_url(event, format: :json)

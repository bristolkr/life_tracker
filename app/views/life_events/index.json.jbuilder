json.array!(@life_events) do |life_event|
  json.extract! life_event, :id, :name, :date, :description
  json.url life_event_url(life_event, format: :json)
end

json.array!(@workouts) do |workout|
  json.extract! workout, :id, :name, :description, :style
  json.url workout_url(workout, format: :json)
end

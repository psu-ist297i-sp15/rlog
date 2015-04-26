json.array!(@dailylogs) do |dailylog|
  json.extract! dailylog, :id, :performance, :day, :distance, :duration, :notes, :comments, :workout_id
  json.url dailylog_url(dailylog, format: :json)
end

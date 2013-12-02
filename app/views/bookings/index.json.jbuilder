json.array!(@bookings) do |booking|
  json.extract! booking, :date, :lawn, :user_id, :start_time, :end_time, :description
  json.url booking_url(booking, format: :json)
end

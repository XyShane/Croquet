json.array!(@programmes) do |programme|
  json.extract! programme, :title, :description, :date, :location
  json.url programme_url(programme, format: :json)
end

json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :title, :date, :pdf
  json.url newsletter_url(newsletter, format: :json)
end

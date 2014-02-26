json.array!(@rentals) do |rental|
  json.extract! rental, :id, :film_id, :user_id
  json.url rental_url(rental, format: :json)
end

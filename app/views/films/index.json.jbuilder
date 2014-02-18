json.array!(@films) do |film|
  json.extract! film, :id, :title, :runtime, :cover, :release_date, :plot
  json.url film_url(film, format: :json)
end

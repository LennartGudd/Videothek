json.array!(@comments) do |comment|
  json.extract! comment, :id, :film_id, :text
  json.url comment_url(comment, format: :json)
end

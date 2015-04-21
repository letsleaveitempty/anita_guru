json.array!(@advices) do |advice|
  json.extract! advice, :id, :problem, :solution
  json.url advice_url(advice, format: :json)
end

json.array!(@methodologies) do |methodology|
  json.extract! methodology, :id, :name, :sort
  json.url methodology_url(methodology, format: :json)
end

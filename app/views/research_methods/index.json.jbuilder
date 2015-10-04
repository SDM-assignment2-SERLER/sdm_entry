json.array!(@research_methods) do |research_method|
  json.extract! research_method, :id, :name, :sort
  json.url research_method_url(research_method, format: :json)
end

json.array!(@evidence_methods) do |evidence_method|
  json.extract! evidence_method, :id, :name, :sort
  json.url evidence_method_url(evidence_method, format: :json)
end

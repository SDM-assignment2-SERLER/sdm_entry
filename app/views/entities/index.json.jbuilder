json.array!(@entities) do |entity|
  json.extract! entity, :id, :research_aim, :research_metric, :evidence_benefit, :evidence_context, :evidence_result, :evidence_intergrity
  json.url entity_url(entity, format: :json)
end

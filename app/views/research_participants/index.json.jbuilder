json.array!(@research_participants) do |research_participant|
  json.extract! research_participant, :id, :name, :sort
  json.url research_participant_url(research_participant, format: :json)
end

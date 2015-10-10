FactoryGirl.define do
  factory :e1, class: Entity do
    research_aim        'rspec'
    research_metric     'book'
    evidence_benefit    'rspec'
    evidence_context    'rspec'
    evidence_result     'rspec'
    evidence_intergrity 'rspec'
  end

  factory :e2, class: Entity do
    research_aim        'cucumber'
    research_metric     'cucumber'
    evidence_benefit    'cucumber'
    evidence_context    'cucumber'
    evidence_result     'cucumber'
    evidence_intergrity 'cucumber'
  end
  
end

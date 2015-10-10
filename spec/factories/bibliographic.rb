FactoryGirl.define do
  factory :b1, class: Bibliographic do
  	title 'b1'
  	author 'me'
  	states 'waiting'
  end

  factory :b2, class: Bibliographic do
  	title 'b2'
  	author 'me'
  	states 'waiting'
  end
  
end

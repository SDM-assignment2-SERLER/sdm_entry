FactoryGirl.define do
  factory :user, class: User do
    email "tom@exmpale.com"
    password  "isasecret"
    role 'user'
  end
end

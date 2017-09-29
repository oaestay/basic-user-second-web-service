FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    image { Faker::Lorem.characters(10) }
  end
end

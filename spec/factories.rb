FactoryGirl.define do
  factory :member do
    name { Faker::Name.name }
    email { Faker::Internet.email }
  end

  factory :entry do
    body { rand(2..5).times.map { Faker::Lorem.sentence }.join($/) }
  end
end

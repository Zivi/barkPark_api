FactoryBot.define do
  factory :park do
    name { Faker::Lorem.word }
    lat { Faker::Address.latitude }
    lng { Faker::Address.longitude }
    active true
    notes { Faker::Lorem.sentence }
    address { Faker::Address.full_address }
    county
  end
end
FactoryBot.define do
  factory :park do
    name { Faker::Lorem.word }
    lat { Faker::Address.latitude }
    lng { Faker::Address.longitude }
    active { Faker::Boolean.boolean }
    notes { Faker::Lorem.sentence }
    address { Faker::Address.full_address }
    county_id nil
  end
end
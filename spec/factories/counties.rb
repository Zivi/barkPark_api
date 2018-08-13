FactoryBot.define do
  factory :county do
    title { Faker::Lorem.word }
    lat { Faker::Address.latitude }
    lng { Faker::Address.longitude }
    active true
  end
end
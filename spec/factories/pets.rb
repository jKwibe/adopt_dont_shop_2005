FactoryBot.define do
  factory :pet do
    shelter
    name { Faker::Name.first_name }
    age { Faker::Number.between(from: 1, to: 15)}
    sex { Faker::Gender.short_binary_type.upcase }
    image { Faker::Avatar.image( size: "300x300", format: "jpg") }
  end
end

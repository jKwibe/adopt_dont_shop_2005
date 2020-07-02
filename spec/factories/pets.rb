FactoryBot.define do
  factory :pet do
    shelter
    name { Faker::Creature::Dog.name}
    age { Faker::Number.between(from: 1, to: 15)}
    sex { Faker::Gender.short_binary_type.upcase }
    image { Faker::Avatar.image( size: "100x100", format: "jpg") }
    description {Faker::Lorem.paragraph(sentence_count: 3)}
  end
end

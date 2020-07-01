# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "factory_bot_rails"
include FactoryBot::Syntax::Methods


@shelter_1 = create(:shelter)
@shelter_2 = create(:shelter)
@shelter_3 = create(:shelter)
@shelter_4 = create(:shelter)

@pet_1 = create(:pet, shelter: @shelter_1)
@pet_2 = create(:pet, shelter: @shelter_3)
@pet_3 = create(:pet, shelter: @shelter_4)
@pet_4 = create(:pet, shelter: @shelter_1)
@pet_5 = create(:pet, shelter: @shelter_2)
@pet_6 = create(:pet, shelter: @shelter_2)
@pet_7 = create(:pet, shelter: @shelter_1)
@pet_8 = create(:pet, shelter: @shelter_3)
@pet_9 = create(:pet, shelter: @shelter_2)
@pet_10 = create(:pet, shelter: @shelter_4)
@pet_11 = create(:pet, shelter: @shelter_4)
@pet_12 = create(:pet, shelter: @shelter_3)

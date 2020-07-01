require "rails_helper"

RSpec.describe "show all pets" do
  before :each do
    @shelter_1 = create(:shelter)
    @shelter_2 = create(:shelter)
    @pet_1 = create(:pet, name: "persy", age: 8, sex: "M", shelter: @shelter_1)
    @pet_2 = create(:pet, name: "piper", age: 12, sex: "F", shelter: @shelter_2)
    @pet_3 = create(:pet, name: "holie", age: 4, sex: "F", shelter: @shelter_1)
    @pet_4 = create(:pet , shelter:@shelter_2 )
  end

  it 'shows all pets' do
    visit "/pets"

    expect(page).to have_content(@pet_1.shelter.name)
    expect(page).to have_content(@pet_2.shelter.name)
    expect(page).to have_content(@pet_1.name)
    expect(page).to have_content(@pet_1.age)
    expect(page).to have_content(@pet_1.sex)
    expect(page).to have_content(@pet_2.name)
    expect(page).to have_content(@pet_2.age)
    expect(page).to have_content(@pet_2.sex)

  end

end
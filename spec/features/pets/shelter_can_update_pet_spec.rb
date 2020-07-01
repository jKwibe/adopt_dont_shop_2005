require "rails_helper"

RSpec.describe 'shelter can update pet', type: :feature do
  before :each do
    @shelter_1 = create(:shelter)
    @shelter_2 = create(:shelter)
    @pet_1 = create(:pet, name: "persy", age: 8, sex: "M", shelter: @shelter_1)
    @pet_2 = create(:pet, name: "piper", age: 12, sex: "F", shelter: @shelter_2)
    @pet_3 = create(:pet, name: "holie", age: 4, sex: "F", shelter: @shelter_1)
    @pet_4 = create(:pet , shelter:@shelter_2 )
  end

  it 'can link to edit page' do
    visit "/pets/#{@pet_1.id}"

    click_on "Update Pet"

    expect(current_path).to eq("/pets/#{@pet_1.id}/edit")
  end

  it 'can update pet ' do
    visit "/pets/#{@pet_2.id}/edit"

    fill_in :name, with: "Harry Molly"
    fill_in :age, with: "4"
    fill_in :sex, with: "M"

    click_on "Update Pet"

    expect(current_path).to eq("/pets/#{@pet_2.id}")

    expect(page).to have_content("Harry Molly")
    expect(page).to have_content("4")
    expect(page).to have_content("M")
  end
end

# User Story 11, Pet Update
#
# As a visitor
# When I visit a Pet Show page
# Then I see a link to update that Pet "Update Pet"
# When I click the link
# I am taken to '/pets/:id/edit' where I see a form to edit the pet's data including:
# - image
# - name
# - description
# - approximate age
# - sex
# When I click the button to submit the form "Update Pet"
# Then a `PATCH` request is sent to '/pets/:id',
# the pet's data is updated,
# and I am redirected to the Pet Show page where I see the Pet's updated information

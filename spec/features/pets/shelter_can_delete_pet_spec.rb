require "rails_helper"

RSpec.describe 'shelter can delete pet', type: :feature do
  before :each do
    @shelter_1 = create(:shelter)
    @shelter_2 = create(:shelter)
    @pet_1 = create(:pet, name: "persy", age: 8, sex: "M", shelter: @shelter_1)
    @pet_2 = create(:pet, name: "piper", age: 12, sex: "F", shelter: @shelter_2)
    @pet_3 = create(:pet, name: "holie", age: 4, sex: "F", shelter: @shelter_1)
    @pet_4 = create(:pet , shelter:@shelter_2 )
  end

  it 'can delete pet' do
    visit "/pets/#{@pet_3.id}"

    click_on "Delete Pet"

    expect(current_path).to eq("/pets")

    expect(page).not_to have_content("holie")
  end
end
# User Story 12, Pet Delete
#
# As a visitor
# When I visit a pet show page
# Then I see a link to delete the pet "Delete Pet"
# When I click the link
# Then a 'DELETE' request is sent to '/pets/:id',
# the pet is deleted,
# and I am redirected to the pet index page where I no longer see this pet
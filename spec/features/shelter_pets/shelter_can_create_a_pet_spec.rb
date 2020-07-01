require "rails_helper"

RSpec.describe 'Shelter can create a pet' do
  before :each do
    @shelter_1 = create(:shelter)
    @shelter_2 = create(:shelter)
    @pet_1 = create(:pet, name: "persy", age: 8, sex: "M", shelter: @shelter_1)
    @pet_2 = create(:pet, name: "piper", age: 12, sex: "F", shelter: @shelter_2)
    @pet_3 = create(:pet, name: "holie", age: 4, sex: "F", shelter: @shelter_1)
    @pet_4 = create(:pet , shelter:@shelter_2 )
  end

  it 'has a link to create new pets' do
    visit "/shelters/#{@shelter_2.id}"

    click_on "Create Pet"

    expect(current_path).to eq("/shelters/#{@shelter_2.id}/pets/new")
  end

  it 'can create pets' do
    visit "/shelters/#{@shelter_2.id}/pets/new"

    fill_in :name , with: "Percy"
    fill_in :description , with: " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed diam nec urna faucibus semper. Donec eget ipsum a sapien tincidunt vestibulum vel non purus."
    fill_in :sex , with: "male"
    fill_in :age , with: "8"
    fill_in :image , with: "percy.jpg"

    click_on "Create Pet"

    expect(current_path).to eq("/pets")

    expect(page).to have_content("adoptible")
    expect(page).to have_content("Percy")
    expect(page).to have_content("male")
    expect(page).to have_content("Lorem ipsum dolor sit amet")
    expect(page).to have_content("8")
    expect(page).to have_content("percy.jpg")
  end
end

# As a visitor
# When I visit a Shelter Pets Index page
# Then I see a link to add a new adoptable pet for that shelter "Create Pet"
# When I click the link
# I am taken to '/shelters/:shelter_id/pets/new' where I see a form to add a new adoptable pet
# When I fill in the form with the pet's:
# - image
# - name
# - description
# - approximate age
# - sex ('female' or 'male')
# And I click the button "Create Pet"
# Then a `POST` request is sent to '/shelters/:shelter_id/pets',
# a new pet is created for that shelter,
# that pet has a status of 'adoptable',
# and I am redirected to the Shelter Pets Index page where I can see the new pet listed

require 'rails_helper'

RSpec.describe 'visit /shelter/:id', type: :feature do
  describe 'can create new shelters' do
    it 'can link to /new' do
      visit "/shelters"

      click_link "New Shelter"
      expect(current_path).to eq("/shelters/new")

      find_field(:name)
      find_field(:address)
      find_field(:city)
      find_field(:state)
      find_field(:zip)
    end
  end
end

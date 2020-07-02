require 'rails_helper'

RSpec.describe 'visit /shelter', type: :feature do
  before :each do
    @shelter_1 = create(:shelter)
    @shelter_2 = create(:shelter)
    @shelter_3 = create(:shelter)
  end
  describe "sees all shelters" do
    it 'display all shelters' do
      visit "/shelters"

      expect(page).to have_content(@shelter_1.name)
      expect(page).to have_content(@shelter_2.name)
      expect(page).to have_content(@shelter_3.name)
    end

  end
end

require 'rails_helper'

describe 'Users show page' do
  context "happy path" do
    it 'allows a user to choose their favorite team' do
      user = create(:user)

      visit user_path(user)
      expect(page).to have_content('Choose your favorite team')
      expect(page).to have_content('Total points: 0')
    end
  end

end
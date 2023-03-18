require 'rails_helper'

describe 'Users show page' do
  context "happy path" do
    before(:each) do
      @user = create(:user)
      create_list(:team, 32)

      visit user_path(@user)
    end
    it 'has a section for choosing favorite team, and total points' do
      expect(page).to have_content('Choose your favorite team')
      expect(page).to have_content('Total points: 0')
    end

    it 'has a dropdown menu with all 32 hockey teams available' do
      expect(page).to have_select 'team'
    end

    it 'updates the page with the favorite team, after selection and submission' do
      team = Team.first
      select team.name, from: 'team'
      click_on 'save'
      expect(current_path).to eq(user_path(@user))
      expect(page).to have_content("favorite team: #{team.name}")
    end
  end
end

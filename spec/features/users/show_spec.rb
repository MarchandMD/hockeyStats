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

    it 'can log a user out' do
      user = User.create(email: 'test@test.com', password: 'pathword')

      visit root_path

      click_on "Log In"

      expect(current_path).to eq(users_login_form_path)

      fill_in "email",	with: user.email
      fill_in "password",	with: user.password

      click_on "Sign In"

      expect(page).to have_content("Welcome, #{user.email}")
      expect(page).to have_content('log out')

      click_on 'log out'

      expect(current_path).to eq(root_path)
      expect(page).to_not have_content('log out')
    end
  end
end

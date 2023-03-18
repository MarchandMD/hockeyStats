require 'rails_helper'

describe "Welcome path" do
  describe 'index action' do
    context "happy path" do
      it 'allows a new user to sign up, and be directed to their dashboard with a flash message' do
        visit root_path
        expect(page).to have_content('Sign Up')

        fill_in "email",	with: "test@test.com"
        fill_in "password", with: "password_1234"
        fill_in "password_confirmation",	with: "password_1234"
        click_on 'Sign Up'

        latest_user = User.last
        expect(current_path).to eq(user_path(latest_user))
        expect(page).to have_content("Welcome, #{latest_user.email}!")
      end
    end

    context "sad path" do
      it 'returns a new user to the sign up page if their password and confirmation don\'t match' do
        visit root_path

        fill_in "email",	with: "test@test.com"
        fill_in "password",	with: "password_1234"
        fill_in "password_confirmation",	with: "not_the_same"
        click_on 'Sign Up'

        expect(current_path).to eq(root_path)
        expect(page).to have_content('Passwords must match')
      end
      xit 'prevents signing up with a current user email' do
        user = create(:user)
        visit root_path

        fill_in "email",	with: user.email
        fill_in "password",	with: "password"
        fill_in "password_confirmation",	with: "password"
        click_on 'Sign Up'

        expect(current_path).to eq(root_path)
      end
    end
  end
end

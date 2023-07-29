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

      it 'can log in with valid credentials' do
        user = User.create(email: 'test@test.com', password: 'pathword')

        visit root_path

        click_on "Log In"

        expect(current_path).to eq(users_login_form_path)

        fill_in "email",	with: user.email
        fill_in "password",	with: user.password

        click_on "Sign In"

        expect(page).to have_content("Welcome, #{user.email}")
      end
    end
  end
end

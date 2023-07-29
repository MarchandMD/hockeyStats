require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  before(:each) do
    @user = create(:user)
  end

  it 'should exist' do
    expect(@user).to be_an_instance_of User
  end

  it 'should have @favorite_team, default to nil' do
    expect(@user.favorite_team).to eq(nil)
    team_name = Faker::Team.name
    @user.favorite_team = team_name
    expect(@user.favorite_team).to eq(team_name)
  end
end

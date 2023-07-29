require '../hockeyStats/app/services/nhlapi_service'
require 'rails_helper'

RSpec.describe 'Teams' do
  before(:each) do
    @team = TeamSearch.new.team_info(1)

    visit "/teams/#{@team.id}"
  end

  describe 'show' do
    it 'has the team name' do
      expect(page).to have_content(@team.name)
    end

    it 'has a link to the roster' do
      expect(page).to have_link('roster')
      click_link 'roster'
      expect(current_path).to eq("/teams/#{@team.id}/players")
    end
  end

end
require 'rails_helper'

RSpec.describe 'Teams' do
  before(:each) do
    @teams = TeamSearch.new.teams_info

    visit '/teams'
  end

  describe '#index' do
    it 'has links to each teams page' do
      @teams.each do |team|
        expect(page).to have_link(team.name)
      end
    end

    it 'can navigate to an individual teams page' do
      click_link 'New Jersey Devils'
      expect(current_path).to eq('/teams/1')
    end
  end
end

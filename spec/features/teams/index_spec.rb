require 'rails_helper'

RSpec.describe 'Teams' do
  before(:each) do
    @teams = TeamSearch.new.teams_info

    visit '/teams'
  end

  describe '#index' do
    it 'has links to each teams page' do
      @teams.each do |team|
        expect(page).to have_link(team.abbreviation.to_s)
      end
    end

    it 'can navigate to an individual teams page' do
      click_link 'NJD'
      expect(current_path).to eq('/teams/1')
    end

    it 'has a button to organize teams by conference' do
      expect(page).to have_link('Conferences')
      click_link 'Conferences'
      expect(current_path).to eq("/teams")
    end

  end
end

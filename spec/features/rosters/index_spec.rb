require 'rails_helper'

RSpec.describe 'Rosters' do
  before(:each) do
    @roster = RosterSearch.new.roster(1)

    visit "/teams/#{@roster.id}/players"
  end
end

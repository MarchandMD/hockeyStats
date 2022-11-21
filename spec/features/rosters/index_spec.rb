require 'rails_helper'

RSpec.describe 'Rosters' do
  before(:each) do
    @roster = RosterSearch.new.roster(1)

    visit "/teams/#{@roster.id}/players"
  end

  describe '#index' do
    it 'has a list of current players' do

    end

  end

end

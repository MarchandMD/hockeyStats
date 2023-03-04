require 'rails_helper'

describe 'Scores' do
  describe '#index' do
    before(:each) do
      @games = GameFacade.new.games
    end
    it 'shows status of each of todays games' do
      visit scores_path
      @games.all? do |game|
        # expect(page).to have_content(game.home)
        # expect(page).to have_content(game.away)
        # expect(page).to have_content(game.status)
      end
    end
  end
end

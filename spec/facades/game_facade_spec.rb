require 'rails_helper'

describe 'GameFacade' do
  describe '#games' do
    it 'returns an Array of Games' do
      games = GameFacade.new.games

      expect(games).to be_a Array

      games.all? { |game| expect(game).to be_a Game }
    end
  end
end

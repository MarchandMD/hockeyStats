require 'rails_helper'

describe 'GameFacade' do
  describe '#games' do
    it 'returns an Array of Games' do
      games = GameFacade.new.games

      expect(games).to be_a Array

      games.all? { |game| expect(game).to be_a Game }
    end
  end
  describe '#season_schedule' do
    it 'adds all Games to the database' do
      season_schedule = GameFacade.new.season_schedule(20222023)
      expect(season_schedule).to be_an Array

      games = Game.all

      expect(games.count).to eq(1423)
    end
  end
end

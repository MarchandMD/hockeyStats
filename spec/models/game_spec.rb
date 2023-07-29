require '../hockeyStats/app/services/nhlapi_service'
require 'rails_helper'

RSpec.describe Game, type: :model do
  it 'has a home, away and status' do
    game_data = {
      home: 'Chicago Blackhawks',
      away: 'Toronto Maple Leafs',
      status: 'Final'
    }

    game = Game.new(game_data)

    expect(game).to be_a Game
  end

  it 'can be created from linescore data' do
    games = NhlApiService.new.schedule[:dates][0][:games]
    expect(games).to be_a Array
  end

  describe 'class methods' do
    describe 'todays_games' do
      it 'returns todays games' do
        create_list(:game, 10)

        todays_games = Game.todays_games

        expect(todays_games).to be_an Array
      end
    end
  end
end

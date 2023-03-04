require '../hockeyStats/app/services/nhlapi_service'
require 'rails_helper'

RSpec.describe Game, type: :model do
  it 'has a home, away and status' do
    game_data = {
      home: 'Chicago Blackhawks',
      away: 'Toronto Maple Leafs',
      status: 0
    }

    game = Game.new(game_data)

    expect(game).to be_a Game
  end

  it 'can be created from linescore data' do
    games = NhlApiService.new.schedule[:dates][0][:games]
    expect(games).to be_a Array

    games.each do |game|
     Game.create!(home: game[:teams][:home][:team][:name], away: game[:teams][:away][:team][:name], status: game[:status][:statusCode].to_i)
    end
    require 'pry'; binding.pry
  end
end

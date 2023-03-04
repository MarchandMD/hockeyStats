require 'rails_helper'
require '../hockeyStats/app/services/nhlapi_service'

describe 'NhlApiService' do
  describe '#linescore' do
    it 'grabs linescore data from the NHL api' do
      schedule = NhlApiService.new.schedule
      game_id = schedule[:dates][0][:games].first[:gamePk]
      linescore = NhlApiService.new.linescore(game_id)

      expect(linescore).to be_a Hash
    end
  end
  describe '#season_schedule' do
    it 'grabs the season schedule for current season, by default' do
      season_schedule = NhlApiService.new.season_schedule(20222023)
      require 'pry'; binding.pry
      expect(season_schedule).to be_a Hash
    end
  end
end
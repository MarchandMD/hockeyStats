require '../hockeyStats/app/services/nhlapi_service'

class ScoresController < ApplicationController
  def index
    schedule = NhlApiService.new.schedule
    game_id = schedule[:dates][0][:games].first[:gamePk]
    games = schedule[:dates][0][:games]
    game_ids = games.map { |game| game[:gamePk] }
    @linescores = game_ids.map do |game_id|
      NhlApiService.new.linescore(game_id)
    end
    @linescore = NhlApiService.new.linescore(game_id)
  end
end

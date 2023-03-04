require '../hockeyStats/app/services/nhlapi_service'

class ScoresController < ApplicationController
  def index
    schedule = NhlApiService.new.schedule
    game_id = schedule[:dates][0][:games].first[:gamePk]
    @linescore = NhlApiService.new.linescore(game_id)
  end
end

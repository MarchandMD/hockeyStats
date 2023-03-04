require '../hockeyStats/app/services/nhlapi_service'

class ScoresController < ApplicationController
  def index
    @games = Game.all
  end

end

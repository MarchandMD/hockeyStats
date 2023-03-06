require '../hockeyStats/app/services/nhlapi_service'

class ScoresController < ApplicationController
  def index
    @games = Game.todays_games
  end

  def show
    @game = Game.find(params[:id])
  end
end

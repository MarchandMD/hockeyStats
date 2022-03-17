class PlayersController < ApplicationController
  def index
    @player = Celly::Player.new
  end

  def show
    @celly_player = Celly::Player.new
    @profile = @celly_player.profile(params[:id])[:data][0]
    @stats = @celly_player.season_stats(params[:id], 20212022)[:data]
  end
end

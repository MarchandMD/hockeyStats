class PlayersController < ApplicationController
  def index
    @player = Celly::Player.new
  end

  def show
    @player = Celly::Player.new
    @profile = @player.profile(params[:id])
    @player_name = @profile[:data][0]['fullName']
    # @season_stats = @player.season_stats(params[:id], season)
    @regular_season_career_stats = @player.regular_season_career_stats(params[:id])
    @playoffs_career_stats = @player.playoffs_career_stats(params[:id])
    @playoffs_stats_by_year = @player.playoffs_stats_by_year(params[:id])
  end
end




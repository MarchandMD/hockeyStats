class PlayersController < ApplicationController
  def index
    @player = Celly::Player.new
  end

  def show
    @player = Celly::Player.new
    if params['player']['player_name'] == ''
      @profile = @player.profile(params[:id])
      @player_name = @profile[:data][0]['fullName']
      # @season_stats = @player.season_stats(params[:id], season)
      @regular_season_career_stats = @player.regular_season_career_stats(params[:id])
      @playoffs_career_stats = @player.playoffs_career_stats(params[:id])
      @playoffs_stats_by_year = @player.playoffs_stats_by_year(params[:id])
    else
      @team = Celly::Team.new
      team_ids = []
      (1..10).each { |x| team_ids << x }
      (12..26).each { |x| team_ids << x }
      (28..30).each { |x| team_ids << x }
      (52..55).each { |x| team_ids << x }
      @players = {}
      team_ids.each do |x|
      @team_roster = @team.roster(x)
        @team_roster[:data].each do |player|
          @players[player['person']['fullName']] = player['person']['id']
        end
      end
      player_id = @players[params['player']['player_name']]
      @profile = @player.profile(player_id)
      @player_name = @profile[:data][0]['fullName']
      # # @season_stats = @player.season_stats(params[:id], season)
      @regular_season_career_stats = @player.regular_season_career_stats(player_id)
      @playoffs_career_stats = @player.playoffs_career_stats(player_id)
      @playoffs_stats_by_year = @player.playoffs_stats_by_year(player_id)
      
    end
  end
end

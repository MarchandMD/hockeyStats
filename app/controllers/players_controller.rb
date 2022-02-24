class PlayersController < ApplicationController
  def index
    @player = Celly::Player.new
  end

  def show
    @player_data = RestClient.get("#{ENV['BASE']}/people/#{params[:id]}")
    @player_stats = RestClient.get("#{ENV['BASE']}/people/#{params[:id]}/stats/?stats=statsSingleSeason&season=20212022")
    # render json: JSON.pretty_generate(JSON.parse(@player_data))
    @player = JSON.parse(@player_data)
    @stats_data = JSON.parse(@player_stats)
    @player_id = @player["people"][0]["id"]
    @player_fullName = @player["people"][0]["fullName"]
    @player_link = @player["people"][0]["link"]
    @player_firstName = @player["people"][0]["firstName"]
    @player_lastName = @player["people"][0]["lastName"]
    @player_primaryNumber = @player["people"][0]["primaryNumber"]
    # render json: JSON.pretty_generate(JSON.parse(@player_stats))
    @time_on_ice = @stats_data["stats"][0]["splits"][0]["stat"]["timeOnIce"]
  end
end

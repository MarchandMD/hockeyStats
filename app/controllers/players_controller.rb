class PlayersController < ApplicationController
  def index
    @player = Celly::Player.new
  end

  def show
    @player_data = RestClient.get("#{ENV['BASE']}/people/#{params[:id]}")
    @player_stats = RestClient.get("#{ENV['BASE']}/people/#{params[:id]}/stats/?stats=statsSingleSeason&season=20212022")
    # render json: JSON.pretty_generate(JSON.parse(@player_data))
    @player_json = JSON.parse(@player_data)
    @player = @player_json['people'][0]
    @player_id = @player["id"]
    @player_fullName = @player["fullName"]
    @player_link = @player["link"]
    @player_firstName = @player["firstName"]
    @player_lastName = @player["lastName"]
    @player_primaryNumber = @player["primaryNumber"]
    @player_birthDate = @player['birthDate']
    # render json: JSON.pretty_generate(JSON.parse(@player_stats))    
    @player_stats = JSON.parse(@player_stats)
  end
end

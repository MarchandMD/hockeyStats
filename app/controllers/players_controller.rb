class PlayersController < ApplicationController
  def index
    @player = Celly::Player.new
  end

  def show
    @player_data = RestClient.get("#{ENV['BASE']}/people/#{params[:id]}")
    render json: JSON.pretty_generate(JSON.parse(@player_data))
    @player = JSON.parse(@player_data)
  end
end

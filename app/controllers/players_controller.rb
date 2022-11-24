class PlayersController < ApplicationController
  def show
    @player_stats = PlayerSearch.new.player_stats(params[:id])
  end
end

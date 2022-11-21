class RostersController < ApplicationController
  def index
    @roster = RosterSearch.new.roster(params[:team_id])
  end

  def show
    
    @player = PlayerSearch.new.player(params[:id])
  end
end

class TeamsController < ApplicationController

  def index
    @teams = TeamSearch.new.teams_info
  end

  def show
    @team = TeamSearch.new.team_info(params[:id])
  end
end

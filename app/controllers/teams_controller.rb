class TeamsController < ApplicationController
  def index
    @team = Celly::Team.new
  end

  def show
    @team = Celly::Team.new
    @team.find(params[:id])
  end
end

class TeamsController < ApplicationController
  
  def index
    @teams = Celly::Team.new
    @all_teams = @teams.all[:data]
  end

  def show
    @team = Celly::Team.new
  end
end

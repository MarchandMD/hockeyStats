class TeamsController < ApplicationController
  def index
    @teams = Celly::Team.new
    @all_teams = @teams.all[:data]
  end

  def show
    @team = Celly::Team.new

    @players = {}
    @team_roster = @team.roster(params[:id])
    @team_roster[:data].each do |player|
      @players[player['person']['fullName']] = player['person']['id']
    end
  end
end

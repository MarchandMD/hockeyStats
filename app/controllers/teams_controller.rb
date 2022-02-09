class TeamsController < ApplicationController
  require 'rest-client'
  require 'json'
  require 'dotenv/load'

  def index
    # @teams = Celly::Team.new
    # @all_teams = @teams.all[:data]
    @teams_direct = RestClient.get("#{ENV['BASE']}/teams")
    # render :json => JSON.pretty_generate(JSON.parse(@teams_direct))
    teams_json = JSON.parse(@teams_direct)
    @teams = teams_json['teams']
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

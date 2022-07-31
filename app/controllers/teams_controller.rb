class TeamsController < ApplicationController
  require 'rest-client'
  require 'json'
  require 'dotenv/load'

  def index
    @teams = RestClient.get("#{ENV['BASE']}/teams")
    # render :json => JSON.pretty_generate(JSON.parse(@teams_direct))
    @teams = JSON.parse(@teams)
    @teams = @teams['teams']
  end

  def show
    roster_modifier = '?expand=team.roster'
    @team_data = RestClient.get("#{ENV['BASE']}/teams/#{params[:id]}#{roster_modifier}")
    # render json: JSON.pretty_generate(JSON.parse(@team_data))
    @team_json = JSON.parse(@team_data)
    @roster = @team_json['teams'][0]['roster']['roster']
    @team = Team.find(params[:id])
  end
end

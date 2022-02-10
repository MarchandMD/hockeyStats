class LeadersController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
    response = RestClient.get('https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=goals&season=20202021')
    json = JSON.parse(response)
    @leaders = json['leagueLeaders'][0]['leaders']
  end
end

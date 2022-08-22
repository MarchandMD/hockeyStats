class LeadersController < ApplicationController
  require 'net/https'
  require 'json'

  def index
    goals_uri = URI("https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=goals&season=20212022")
    @goals = Net::HTTP.get(goals_uri)
    @goals = JSON.parse(@goals)   
    assists_uri = URI("https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=assists&season=20212022")
    @assists = Net::HTTP.get(assists_uri)
    @assists = JSON.parse(@assists)   
    savePct_uri = URI("https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=savePct&season=20212022")
    @savePct = Net::HTTP.get(savePct_uri)
    @savePct = JSON.parse(@savePct)   
    shutouts_uri = URI("https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=shutouts&season=20212022")
    @shutouts = Net::HTTP.get(shutouts_uri)
    @shutouts = JSON.parse(@shutouts)   
    gaa_uri = URI("https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=gaa&season=20212022")
    @gaa = Net::HTTP.get(gaa_uri)
    @gaa = JSON.parse(@gaa)   
    plusMinus_uri = URI("https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=plusMinus&season=20212022")
    @plusMinus = Net::HTTP.get(plusMinus_uri)
    @plusMinus = JSON.parse(@plusMinus)   
    points_uri = URI("https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=points&season=20212022")
    @points = Net::HTTP.get(points_uri)
    @points = JSON.parse(@points)   
    powerPlayGoals_uri = URI("https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=powerPlayGoals&season=20212022")
    @powerPlayGoals = Net::HTTP.get(powerPlayGoals_uri)
    @powerPlayGoals = JSON.parse(@powerPlayGoals)   
    shortHandedGoals_uri = URI("https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=shortHandedGoals&season=20212022")
    @shortHandedGoals = Net::HTTP.get(shortHandedGoals_uri)
    @shortHandedGoals = JSON.parse(@shortHandedGoals)   
    timeOnIcePerGame_uri = URI("https://statsapi.web.nhl.com/api/v1/stats/leaders?leaderCategories=timeOnIcePerGame&season=20212022")
    @timeOnIcePerGame = Net::HTTP.get(timeOnIcePerGame_uri)
    @timeOnIcePerGame = JSON.parse(@timeOnIcePerGame)   
  end
end

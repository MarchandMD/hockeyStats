class StandingsController < ApplicationController
  require 'json'

  def index
    @standings = Celly::Standings.new
    raw_data = @standings.overall(20222021)[:data]
    @metropolitan = raw_data[0]["division"]["name"]
    @metro_team_records = raw_data[0]["teamRecords"]
  end
end

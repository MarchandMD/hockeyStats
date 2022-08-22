class StandingsController < ApplicationController
  require 'json'
  require 'net/http'

  def index
    uri = URI('https://statsapi.web.nhl.com/api/v1/standings')
    @standings = Net::HTTP.get(uri)
    # render :json => JSON.pretty_generate(JSON.parse(@net_standings))
    @standings = JSON.parse(@standings)
    # require 'pry'; binding pry
    
  end
end

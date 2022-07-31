class PlayersController < ApplicationController
  require 'net/https'
  require 'json'

  def index
    base = "https://statsapi.web.nhl.com/api/v1"
    endpoint = "/people/8477472"
    uri = URI("#{base}/#{endpoint}")
    @data = Net::HTTP.get(uri)
    @data = JSON.parse(@data)
  end

  def show
    base = "https://statsapi.web.nhl.com/api/v1"
    endpoint = "/people/#{params[:id]}"
    uri = URI("#{base}/#{endpoint}")
    @data = Net::HTTP.get(uri)
    @data = JSON.parse(@data)
    stats_endpoint = "#{endpoint}/stats"
    stats_uri = URI("#{base}/#{stats_endpoint}?stats=yearByYear")
    @stats = Net::HTTP.get(stats_uri)
    @stats = JSON.parse(@stats)
  end

end

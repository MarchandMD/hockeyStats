class StandingsController < ApplicationController
  require 'json'

  def index
    @standings = Celly::Standings.new
    @raw_data = @standings.overall(20222021)[:data]
    
  end
end

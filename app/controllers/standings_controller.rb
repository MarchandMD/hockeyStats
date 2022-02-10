class StandingsController < ApplicationController
  require 'json'

  def index
    @standings = Celly::Standings.new
    @raw_data = @standings.overall(20_222_021).to_json
    # render :json => JSON.pretty_generate(JSON.parse(@raw_data))
    @all_standings = JSON.parse(@raw_data)
    @divisions = []
    @all_standings['data'].each do |division|
      @divisions << division
    end
  end
end

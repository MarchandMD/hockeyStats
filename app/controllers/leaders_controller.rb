class LeadersController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
    @leaders = Celly::Leaders.new
    @in_goals = @leaders.goals(20072008)
  end
end

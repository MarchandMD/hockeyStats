class LeadersController < ApplicationController
  def index
    @leaders = Celly::Leaders.new

    @current_goals_leaders = @leaders.goals(20192018)[:data]
  end
end

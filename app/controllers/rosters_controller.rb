class RostersController < ApplicationController
  def index
    @roster = RosterSearch.new.roster(params[:team_id])
  end

  def show; end
end

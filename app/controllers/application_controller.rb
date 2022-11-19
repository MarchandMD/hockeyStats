class ApplicationController < ActionController::Base
  before_action :get_info, only: %i[index show new edit]

  def get_info
    @teams = TeamSearch.new.team_info
  end
end

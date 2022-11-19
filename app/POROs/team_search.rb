require './app/services/nhlapi_services'
require './app/poros/team'

class TeamSearch
  def team_info
    service.teams[:teams].map do |data|
      Team.new(data)
    end

  end

  def service
    NhlApiService.new
  end
end

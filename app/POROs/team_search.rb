require './app/services/nhlapi_service'
require './app/poros/team'

class TeamSearch
  def teams_info
    teams = service.teams
    teams[:teams].map do |team_hash|
      Team.new(team_hash)
    end
  end

  def team_info(id)
    team = service.team(id)
    team = Team.new(team[:teams][0])
  end

  def service
    NhlApiService.new
  end
end

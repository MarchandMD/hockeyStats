require "httparty"

class NhlApiService
  def teams
    get_url("https://statsapi.web.nhl.com/api/v1/teams?expand=team.roster")
  end

  def team(id)
    get_url("https://statsapi.web.nhl.com/api/v1/teams/#{id}")
  end

  def roster(id)
    get_url("https://statsapi.web.nhl.com/api/v1/teams/#{id}/roster")
  end

  def season_json_data
    get_url("https://statsapi.web.nhl.com/api/v1/seasons/current")
  end

  def scores
    get_url("https://statsapi.web.nhl.com/api/v1/game/2022020001/boxscore")
  end

  def player(id)
    get_url("https://statsapi.web.nhl.com/api/v1/people/#{id}/stats?stats=yearByYear")
  end

  def get_url(url)
    response = HTTParty.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
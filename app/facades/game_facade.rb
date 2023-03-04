require '../hockeyStats/app/services/nhlapi_service'

class GameFacade
  def games
    games = service.schedule[:dates][0][:games]
    games.map do |game|
      Game.create!(
        home: game[:teams][:home][:team][:name],
        away: game[:teams][:away][:team][:name],
        status: game[:status][:statusCode].to_i
      )
    end
  end

  def service
    NhlApiService.new
  end
end

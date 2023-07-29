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

  def season_schedule(season = nil)
    season_schedule = service.season_schedule(season)[:dates]
    season_schedule.each do |date|
      date[:games].each do |game|
        Game.create!(home: game[:teams][:home][:team][:name],
                     away: game[:teams][:away][:team][:name],
                     status: game[:status][:detailedState],
                     date: game[:gameDate])
      end
    end
  end

  def service
    NhlApiService.new
  end
end

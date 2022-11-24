require './app/services/nhlapi_services'
require './app/poros/player'

class PlayerSearch
  def player_stats(id)
    player = service.player(id)
    player = player[:stats][0][:splits].map do |season_split|
      Player.new(season_split)
    end
  end

  def service
    NhlApiService.new
  end
end

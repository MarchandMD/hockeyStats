require './app/services/nhlapi_services'
require './app/poros/player'

class PlayerSearch
    def player(id)
      player = service.player(id)
      player_stats = player[:stats]
    end



  def service
    NhlApiService.new
  end
end
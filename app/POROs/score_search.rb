require './app/services/nhlapi_services'
require './app/poros/score'

class ScoreSearch
  def game_info
    @teams = service.scores[:teams]
    @teams[:away][:team]
    @teams[:away][:teamStats]
    @teams[:away][:players]
    @teams[:away][:goalies]
    @teams[:away][:skaters]
    @teams[:away][:onIce]
    @teams[:away][:onIcePlus]
    @teams[:away][:scratches]
    @teams[:away][:penaltyBox]
    @teams[:home][:team]
    @teams[:home][:teamStats]
    @teams[:home][:players]
    @teams[:home][:goalies]
    @teams[:home][:skaters]
    @teams[:home][:onIce]
    @teams[:home][:onIcePlus]
    @teams[:home][:scratches]
    @teams[:home][:penaltyBox]

    require 'pry'; binding.pry
  end

  def service
    NhlApiService.new
  end
end

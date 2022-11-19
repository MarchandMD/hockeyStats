require './app/services/nhlapi_services'
require './app/poros/season'

class SeasonSearch
  def service
    NhlApiService.new
  end

  def years
    service.season_json_data[:seasons].map { |data| Season.new(data)  }
  end
end
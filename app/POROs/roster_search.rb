require './app/services/nhlapi_services'
require './app/poros/person'

class RosterSearch

  def roster(id)
    roster = service.roster(id)
    roster = roster[:roster].map do |roster_spot|
      Person.new(roster_spot[:person])
    end
    
  end

  def service
    NhlApiService.new
  end
end
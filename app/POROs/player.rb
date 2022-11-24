class Player
  attr_reader :season,
              :assists,
              :goals,
              :games_played,
              :penalty_minutes,
              :total_points

  def initialize(data)
    @season = data[:season]
    @assists = data[:stat][:assists]
    @goals = data[:stat][:goals]
    @games_played = data[:stat][:games]
    @penalty_minutes = data[:stat][:penaltyMinutes]
    @total_points = data[:stat][:points]
  end
end

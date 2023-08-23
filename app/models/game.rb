class Game < ApplicationRecord
  

  def self.todays_games
    where(["date > ? and date < ?", DateTime.now.at_beginning_of_day.to_s, DateTime.now.at_end_of_day.to_s])
  end
end

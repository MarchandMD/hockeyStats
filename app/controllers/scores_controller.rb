class ScoresController < ApplicationController

  def index
    score = ScoreSearch.new.game_info
    @away = score[0][1]
    @home = score[1][1]
  end
end

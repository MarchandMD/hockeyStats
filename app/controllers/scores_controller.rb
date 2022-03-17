class ScoresController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
    @scores = Celly::Scores.new
    @today = @scores.today[:data]
  end

  private

  def process_json(h)
    h = JSON.parse(h)
    h.transform_keys!(&:to_sym)
  end

end

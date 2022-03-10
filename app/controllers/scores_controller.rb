class ScoresController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
    @today = RestClient.get 'https://statsapi.web.nhl.com/api/v1/schedule'
    @today = process_json(@today)
    # render json: JSON.pretty_generate(@today)
  end

  private

  def process_json(h)
    h = JSON.parse(h)
    h.transform_keys!(&:to_sym)
  end

end

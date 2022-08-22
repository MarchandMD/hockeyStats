class ScoresController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
    # need to find correct endpoint
    @game_types = RestClient.get "#{ENV['BASE']}/playTypes"
    @today = JSON.parse(@game_types.body)
  end

  private

  def process_json(h)
    h = JSON.parse(h)
    h.transform_keys!(&:to_sym)
  end

end

require 'rest-client'
require 'json'

class ConfigurationsController < ApplicationController
  def index
    @configs = RestClient.get("https://statsapi.web.nhl.com/api/v1/configurations")
    @configs = JSON.parse(@configs)
  end
end

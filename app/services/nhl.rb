require 'pry'
require 'httparty'

response = HTTParty.get("https://statsapi.web.nhl.com/api/v1/seasons/current")

parsed = JSON.parse(response.body, symbolize_names: true)

require 'pry'; binding.pry
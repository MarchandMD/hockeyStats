require 'pry'
require 'httparty'

response = HTTParty.get("https://statsapi.web.nhl.com/api/v1/game/2022020001/boxscore")

parsed = JSON.parse(response.body, symbolize_names: true)

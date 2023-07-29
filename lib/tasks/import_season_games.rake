namespace :nhl do
  desc 'populate development environment with regular season games'
  task seed_regular_season_games: [:environment] do
    # code here
    GameFacade.new.season_schedule(20222023)

    p 'games added to development database'
  end
end
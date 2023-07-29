require '../hockeyStats/app/services/nhlapi_service'
namespace :nhl do
  desc 'populate development environment with teams'
  task add_teams: [:environment] do
    # code here
    NhlApiService.new.teams.map do |team|
      Team.create!(name: team[:name])
    end
    p 'teams added to development database'
  end
end

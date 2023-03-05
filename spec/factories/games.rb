FactoryBot.define do
  factory :game do
    home { Faker::Sports::Basketball.team }
    away { Faker::Sports::Basketball.team }
    status { ['Scheduled', 'In Progress', 'Final'].sample }
    date { DateTime.now }
  end
end
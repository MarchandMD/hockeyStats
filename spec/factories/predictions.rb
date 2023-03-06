FactoryBot.define do
  factory :prediction do
    user { nil }
    game { nil }
    expected_outcome { "MyString" }
  end
end

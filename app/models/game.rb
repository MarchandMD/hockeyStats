class Game < ApplicationRecord
  enum status: {
    scheduled: 1,
    status_two: 2,
    status_three: 3,
    status_four: 4,
    status_five: 5,
    final: 6,
    finished: 7,
    status_eight: 8,
    status_nine: 9,
    status_zero: 0
  }
end

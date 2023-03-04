class Game < ApplicationRecord
  enum status: {
    scheduled: 1,
    in_progress: 4,
    finished: 7
  }
end

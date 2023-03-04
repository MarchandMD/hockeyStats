class Game < ApplicationRecord
  enum status: {
    scheduled: 0,
    in_progress: 1,
    finished: 7
  }
end

class User < ApplicationRecord
  has_many :predictions, dependent: :destroy
  has_many :games, through: :predictions
end

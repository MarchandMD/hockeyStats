class User < ApplicationRecord
  has_many :predictions, dependent: :destroy
  has_many :games, through: :predictions

  validates :email, presence: true
  validates :password, presence: true

  has_secure_password
end

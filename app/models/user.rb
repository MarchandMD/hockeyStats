class User < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true, on: :create, allow_blank: true

  has_secure_password
end

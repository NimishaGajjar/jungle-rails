class User < ApplicationRecord
  attr_accessor :password_confirmation

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true, length: { minimum: 6 }

  has_secure_password
end


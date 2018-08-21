class User < ApplicationRecord
  has_many :phrases
  has_many :states, through: :phrases
  validates_confirmation_of :password
  attr_accessor :password_confirmation
  has_secure_password
end

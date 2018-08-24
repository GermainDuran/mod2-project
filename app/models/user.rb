class User < ApplicationRecord
  include ActiveModel::Validations
  # validates_with UsersHelper::NewUserValidator

  has_many :phrases
  has_many :comments
  has_many :ratings
  has_many :states, through: :phrases
  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true
  validates_confirmation_of :password
  validates_presence_of :password_confirmation, :message => "Confirmation should match password"

  attr_accessor :password_confirmation


end

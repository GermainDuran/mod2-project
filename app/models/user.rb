class User < ApplicationRecord
  has_many :phrases
  has_many :comments
  has_many :states, through: :phrases
end

class User < ApplicationRecord
  has_many :phrases
  has_many :states, through: :phrases
end

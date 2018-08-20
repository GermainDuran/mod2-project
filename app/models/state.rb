class State < ApplicationRecord
  has_many :phrases
  has_many :users, through: :phrases
  belongs_to :region
end

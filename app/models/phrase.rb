class Phrase < ApplicationRecord
  has_many :comments
  belongs_to  :states
  belongs_to :user 
end

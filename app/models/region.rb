class Region < ApplicationRecord
  has_many :states

  def phrases
    phrases = []
    self.states.each do |state|
      phrases << state.phrases
    end

    phrases.flatten
  end
end

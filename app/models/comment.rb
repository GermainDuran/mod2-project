class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :phrase
  validates :content, presence: true
  validate :check_length

  def user_name
    user.username
  end

  def check_length
    if content.length > 5
      errors.add(:content, "Comment cannot be greater than 250 characters in length!")
    end
  end
end

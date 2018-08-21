class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :phrase

  def user_name
    user.username
  end
end

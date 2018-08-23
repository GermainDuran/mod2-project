module UsersHelper

  class NewUserValidator < ActiveModel::Validator
    def validate user
      if !!user.password && user.password.length < 6
        user.errors.add(:password, "Password must be greater than 6 characters long!")
      end

      if !user.username && user.username.length < 6
        user.errors.add(:username, "Username must be greater than 6 characters long!")
      end

    end
  end
end

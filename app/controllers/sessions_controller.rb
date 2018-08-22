class SessionsController < ApplicationController
  def login
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path @user
    else
      redirect_to login_path
    end
  end

  def logout
    session.destroy
    redirect_to home_path
  end
end

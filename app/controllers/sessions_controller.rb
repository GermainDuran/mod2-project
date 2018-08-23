class SessionsController < ApplicationController
  def login
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path @user
    else
      flash[:errors] = "but our records don't match any of dat info doe"
      render :login
    end
  end

  def logout
    session.destroy
    redirect_to home_path
  end
end

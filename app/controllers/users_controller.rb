class UsersController < ApplicationController
  before_action :set_user, only: [:new,:show,:edit,:update]
  def index
    @users = User.all
  end

  def show
  end

  def new

  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path @user
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @user.update user_params
      redirect_to user_path @user
    else
      redirect_to edit_user_path @user
    end
  end

  def delete
    user = User.find params[:id]
    user.destroy
    redirect_to
  end

  private

    def set_user
      if params[:id]
        @user = User.find params[:id]
      else
        @user = User.new
      end
    end

    def user_params
      params.require(:user).permit(:username,:password,:password_confirmation)
    end
end

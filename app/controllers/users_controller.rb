class UsersController < ApplicationController
  def new
    
  end

  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to users_path
  end

  def index
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end

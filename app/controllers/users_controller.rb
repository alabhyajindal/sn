class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save!
    session[:user_id] = user
    redirect_to posts_path
  end

  private

  def user_params
    params[:user].permit(:username, :password)
  end
end

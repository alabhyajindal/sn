class SessionsController < ApplicationController
  def create
    fail
  end

  def destroy
    session[:user_id] = nil
    redirect_to posts_path
  end
end

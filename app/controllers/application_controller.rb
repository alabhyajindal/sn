class ApplicationController < ActionController::Base
  def require_login
    unless current_user
      flash[:notice] = 'Please sign in first'
      redirect_to login_path
    end
  end

  def require_logout
    if current_user
      redirect_to root_path
    end
  end

  def current_user
    @current_user = @current_user || User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def already_voted?(post, user)
    post.voters.include?(user)
  end

  helper_method :already_voted?
end

class VotesController < ApplicationController
  before_action :require_login

  def create
    @post = Post.find(params[:post_id])

    if @post.voters << current_user
      #
    else
      # 
    end
  end
end
class VotesController < ApplicationController
  before_action :require_login

  def create
    @post = Post.find(params[:post_id])
  
    if @post.voters << current_user
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("post-votes-#{@post.id}", partial: "posts/vote_count", locals: { post: @post }) }
      end
    else
      # 
    end
  end
  
end
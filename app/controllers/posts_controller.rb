class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.new
  end

  def create
    post = current_user.posts.create(post_params)
    if post.save
      redirect_to post_path(post)
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params[:post].permit(:body)
  end
end

class PostsController < ApplicationController
  before_action :require_login, only: [:create, :new, :upvote]

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.create(post_params)
    if @post.save && @post.votes.create(user: current_user)
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def upvote
    @post = Post.find(params[:post_id])

    unless @post.voters.include?(current_user)
      @post.voters << current_user
    end

    redirect_to root_path
  end

  private

  def post_params
    params[:post].permit(:title, :url, :text)
  end
end

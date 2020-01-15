class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def create
    Posts.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:content).merge(user_id: current_user.id)
  end


end

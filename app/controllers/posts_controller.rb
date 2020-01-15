class PostsController < ApplicationController
  def index
    @post = Post.new
  end

  def create
    Posts.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:content).merge(user_id: current_user.id)
  end


end

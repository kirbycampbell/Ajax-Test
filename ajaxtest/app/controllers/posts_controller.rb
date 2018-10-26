class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.build(posts_params)
  end

  def new
    render :index
  end

  private

  def posts_params
    params.require(:post).permit(:content)
  end
end

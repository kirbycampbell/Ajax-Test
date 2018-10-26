class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.all

    respond_to do |format|
      format.html {render 'posts/index.html', :layout => false}
      format.js {render 'posts/index.js', :layout => false}
    end
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

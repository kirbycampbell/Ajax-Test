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
    @post = Post.new(posts_params)
    if @post.save
    end
  end

  def new
    @post = Post.new
    redirect_to :index
  end

  private

  def posts_params
    params.require(:post).permit(:title, :content)
  end
end

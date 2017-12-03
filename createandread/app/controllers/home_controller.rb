class HomeController < ApplicationController
  def index
    # Post 라는 모델에서 라는 의미
    @posts = Post.all
  end

  def write
  end

  def create
    # view 페이지가 필요없고, action이 끝나면 index페이지로 이동하면 된다.
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save

    redirect_to '/index'
  end

  def modify
    @post = Post.find(params[:post_id])
  end

  def update
    post = Post.find(params[:post_id])
    post.title = params[:title]
    post.content = params[:content]
    post.save

    redirect_to '/index'
  end

  def delete
    Post.destroy(params[:post_id])

    # redirect_to :back
    redirect_to '/index'
  end
end

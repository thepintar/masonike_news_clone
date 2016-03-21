class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def vote
    @post = Post.find(params[:id])
    @post.votes += 1
    @post.save
    redirect_to posts_path
  end

  def edit
  end

  def update
  end

  def destroy

  end

end

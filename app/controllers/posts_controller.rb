# frozen_string_literal: true

# Posts Controller
class PostsController < ApplicationController
  before_action :logged_in_user, only: %i[new create]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash[:success] = 'Post was successfully created'
      redirect_to posts_path
    else
      flash.now[:danger] = 'Post could not be created'
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end

class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end

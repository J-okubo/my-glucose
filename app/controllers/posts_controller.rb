class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @post= Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  def edit
  end

private
  def post_params
    params.require(:post).permit(:content).merge(user_id:current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end

class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if current_user.admin?
      if @post.save
        redirect_to @post
      else
        render 'new'
      end
    else
      redirect_to root_path
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if current_user.admin?
      if @post.update(params[:post].permit(:title, :body))
        redirect_to @post
      else
        render 'edit'
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if current_user.admin?
     @post.destroy
     redirect_to posts_path
    else
     redirect_to root_path
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :body)
    end
end

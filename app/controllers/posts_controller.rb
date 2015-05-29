class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]
  before_action :authenticate_author!, only: [:new, :create, :edit, :my, :update, :destroy]

  def index
    @posts = params[:tag].blank? ? Post.all : Post.tagged_with(params[:tag])
    @posts = @posts.publish
    @posts = @posts.where(user: params[:user].to_i) unless params[:user].blank?
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    
    if @post.save
      redirect_to @post, notice: "發文成功"
    else
      render "new", notice: "發文失敗,請稍後再試"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def my
    @posts = Post.where(user: current_user.id)
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "發文成功"
    else
      render 'edit', notice: "發文失敗,請稍後再試"
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :tag_list, :status)
  end

  def set_post
    @post = current_user.posts.find(params[:id])
  end
end

class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
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
  end

  def edit
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
    params.require(:post).permit(:title, :content, :tag_list)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

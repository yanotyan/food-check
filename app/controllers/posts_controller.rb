class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new

    @tag = Tag.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: '投稿しました'
    else
      render :new, notice: 'もう一度入力してください'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
    @post = Post.find(params[:id])
  end
  

  private
  def post_params
    params.require(:post).permit(:name, :photo, :content, tag_ids: []).merge(user_id: current_user.id)
  end
end

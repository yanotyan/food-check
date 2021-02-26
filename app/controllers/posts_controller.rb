class PostsController < ApplicationController
  def index

  end

  def new
    @post = Post.new

    @tag = Tag.all
  end

  def create
    @post = Post.new(post_params)
    binding.pry
    if @post.save
      redirect_to root_path, notice: '投稿しました'
    else
      render :new, notice: 'もう一度入力してください'
    end

  end

  private
  def post_params
    params.require(:post).permit(:name, :photo, :content, tag_ids: []).merge(user_id: current_user.id)
  end
end

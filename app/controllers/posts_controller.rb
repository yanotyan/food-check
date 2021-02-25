class PostsController < ApplicationController
  def index

  end

  def new
    @post = Post.new
    @tag = Tag.all
  end


end

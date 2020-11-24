class PostsController < ApplicationController
  def index
     @posts = policy_scope(Post).order(created_at: :desc)
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    authorize @post
    if @post.save
      redirect_to posts_path
    else
      render :new
    end

  end


  private

  def post_params
    params.require(:post).permit(:title, :content, :category)

  end
end

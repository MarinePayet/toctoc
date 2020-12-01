class PostsController < ApplicationController

skip_before_action :verify_authenticity_token, only: :like


  def index
      @posts = Post.none
      if params[:sos] == "true"
        @posts = @posts.or(Post.where(:category=> "SOS"))
      end
      if params[:fyi] == "true"
        @posts = @posts.or(Post.where(:category=> "FYI"))
      end
      if params[:tips] == "true"
        @posts = @posts.or(Post.where(:category=> "Tips"))
      end
      if params[:issues] == "true"
        @posts = @posts.or(Post.where(:category=> "Issues"))
      end
      if params[:lost_founds] == "true"
        @posts = @posts.or(Post.where(:category=> "Lost & Founds"))
      end

     @posts = Post.all if @posts.empty?
     @posts = policy_scope(@posts).order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    authorize @post
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

  def like
    @post = Post.find(params[:id])
    authorize @post
    if current_user.voted_for? @post
      @post.unliked_by current_user
    else
      @post.liked_by current_user
    end
    render json: {count: @post.get_likes.size}
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category, :format)

  end
end

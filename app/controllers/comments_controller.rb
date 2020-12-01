class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    authorize @comment
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@post)
    else
      render "posts/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end

class PagesController < ApplicationController
  def home
    @user = current_user
    @events = Event.all.order(created_at: :desc).first(3)
    @posts = Post.all.order(created_at: :desc).first(3)
  end

  def choice

  end
end

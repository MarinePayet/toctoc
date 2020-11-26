class ProfilesController < ApplicationController
  def me
    @posts = current_user.posts
    @services = current_user.services
    authorize :profile, :me?
  end
end

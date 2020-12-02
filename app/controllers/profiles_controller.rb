class ProfilesController < ApplicationController
  def me
    @posts = current_user.posts
    @services = current_user.services
    @inboxes = current_user.inboxes
    authorize :profile, :me?
  end

  def edit
    @user = current_user
    authorize :profile, :edit?
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to profile_path
    authorize :profile, :update?
  end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :email, :birthday, :job, :phone_number, :catch_phrase, :photo, :hobbies, :stairs)
  end
end

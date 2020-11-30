class UsersController < ApplicationController
  def index
    if params[:query].present?
      @users = User.search_by_names_job_and_hobbies(params[:query])

    else
      @users = User.all
    end

  @users = policy_scope(@users).order(created_at: :desc)
  end

  def show
    @user = User.find(params[:id])
  end

end

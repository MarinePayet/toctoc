class ServicesController < ApplicationController


  def index
    @services = policy_scope(Service).order(created_at: :desc)
  end


  def show
    @service = Service.find(params[:id])
    authorize @service
  end

end



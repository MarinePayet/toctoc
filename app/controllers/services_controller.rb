class ServicesController < ApplicationController

  def index
    @services = Service.none
      if params[:loan] == "true"
        @services = @services.or(Service.where(:typology=> "Loan"))
      end
      if params[:service] == "true"
        @services = @services.or(Service.where(:typology=> "Service"))
      end
    @services = Service.all if @services.empty?
      if params[:available] == "true"
        @services = @services.where(:available=> true)
      end
    @services = policy_scope(@services).order(created_at: :desc)
  end

  def show
    @service = Service.find(params[:id])
    authorize @service
  end
end



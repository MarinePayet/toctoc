class ServicesController < ApplicationController


  def index

    if params[:query].present?
      @services = Service.search_by_name_and_description(params[:query])
    else
      @services = Service.all
    end

    if params[:loan] == 'true'
      @services = @services.where(typology: "Loan")
    end

    if params[:service] == 'true'
      @services = @services.where(typology: "Service")
    end

    if params[:available] == 'true'
      @services = @services.where(:available=> true)
    end

    @services = policy_scope(@services).order(created_at: :desc)


  end

  def show
    @service = Service.find(params[:id])
    authorize @service

  end
end



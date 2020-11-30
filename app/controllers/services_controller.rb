class ServicesController < ApplicationController


  def index

    if params[:query].present?
      @services = Service.search_by_name_and_description(params[:query])
      # sql_query = " \
      #   services.name @@ :query \
      #   OR services.description @@ :query
      # "
      # @services = Service.where(sql_query, query: "%#{params[:query]}%")
    else
      @services = Service.all
    end


    # @services = Service.none
      if params[:loan] == "true"
        @services = @services.where(typology: "Loan")
        # @services = @services.or(Service.where(:typology=> "Loan"))
      end
      if params[:service] == "true"
        @services = @services.where(typology: "Service")
        # @services = @services.or(Service.where(:typology=> "Service"))
      end
    # @services = Service.all if @services.empty?
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



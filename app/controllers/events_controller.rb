class EventsController < ApplicationController

  def index
    @events = policy_scope(Event).order(created_at: :desc)
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @event
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

private
  def event_params
    params.require(:event).permit(:starting_date, :ending_date, :starting_hour, :ending_hour, :location, :title, :description, :user_id)
  end

end

class EventsController < ApplicationController

  def index
    @events = policy_scope(Event).order(starting_at: :desc)
    @passed_events = Event.where("starting_at < ?", Date.today).order(starting_at: :desc)
    @upcoming_events = Event.where("starting_at > ?", Date.today).order(starting_at: :asc)
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

  def like
    @event = Event.find(params[:id])
    authorize @event
    if current_user.voted_for? @event
      status = 'unliked'
      @event.unliked_by current_user
    else
      status = 'liked'
      @event.liked_by current_user
    end
    render json: {count: @event.get_likes.size, status: status}
  end

private
  def event_params
    params.require(:event).permit(:starting_at, :ending_at, :description, :location, :title, :photo)
  end

end

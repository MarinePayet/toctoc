class InboxesController < ApplicationController

  def index
     @inboxes = policy_scope(Inbox).order(created_at: :desc)
  end

  def show
    @inbox = Inbox.find(params[:id])
    authorize @inbox

  end




  # def new
  #   @message = Message.new
  #   authorize @message
  # end

  def create
    @inbox = Inbox.new(inbox_params)
    authorize @inbox
    @inbox.save
  end

private

  def inbox_params
    params.require(:inbox).permit(:topic)
  end

end

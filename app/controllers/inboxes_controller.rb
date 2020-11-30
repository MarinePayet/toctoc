class InboxesController < ApplicationController

  def index
     @inboxes = policy_scope(Inbox).order(created_at: :desc)
  end

  def show
    @inbox = Inbox.find(params[:id])
    authorize @inbox
  end

  def new
    @inbox = Inbox.new
    authorize @inbox
  end

  def create
    @inbox = Inbox.new(inbox_params)
    authorize @inbox
    @inbox.save
    participants_id = params[:inbox][:participants].reject { |c| c.empty? }
    participants_id.each do |id|
      Participant.new(user: User.find(id), inbox: @inbox).save
    end
    @message = Message.new(content: params[:inbox][:message])
    @message.inbox = @inbox
    @message.user = current_user
    @message.save
    if @inbox.save
      redirect_to inbox_path(@inbox)
    else
      render :new
    end
  end

private

  def inbox_params
    params.require(:inbox).permit(:topic)
  end

end

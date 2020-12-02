class MessagesController < ApplicationController

  def index
    @inbox = Inbox.find(params[:inbox_id])
    @messages = Message.where(inbox_id: @inbox.id)
    @messages = policy_scope(Message).order(created_at: :desc)
     # @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
    authorize @message
  end

  # def new
  #   @message = Message.new
  #   authorize @message
  # end

  def create
    @inbox = Inbox.find(params[:inbox_id])
    @message = Message.new(message_params)
    @message.inbox = @inbox
    @message.user = current_user
    authorize @message

    if @message.save
      @inbox.participants.map(&:user).each do |user|
        InboxChannel.broadcast_to(
          user,
          render_to_string(partial: '/inboxes/message_partial/not_user', locals: { message: @message })
        )
      end

      redirect_to inbox_path(@inbox, anchor: "message-#{@message.id}")
    else
      render "inbox/show"
    end
  end

private

  def message_params
    params.require(:message).permit(:content)
  end

end

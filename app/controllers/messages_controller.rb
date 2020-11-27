class MessagesController < ApplicationController

  def index
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
    @message = Message.new(message_params)
    authorize @message
    @message.save
  end

private

  def message_params
    params.require(:message).permit(:content)
  end

end

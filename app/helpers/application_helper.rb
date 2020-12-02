module ApplicationHelper
  def message_sender(message)
    if message.user == current_user
      "inboxes/message_partial/current_user"
    else
      "inboxes/message_partial/not_user"
    end
  end
end

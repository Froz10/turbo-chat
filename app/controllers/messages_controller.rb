class MessagesController < ApplicationController
  def index
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @messages = @chat_room.messages
  end  
  
  def create
    @message = current_user.messages.build(body: msg_params[:body], chat_id: msg_params[:chat_id])
    @message.save
  end

  private

  def msg_params
    params.require(:message).permit(:body, :chat_id)
  end
end

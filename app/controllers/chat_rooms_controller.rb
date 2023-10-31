class ChatRoomsController < ApplicationController
  def index
    @chat_rooms = ChatRoom.all
    @chat_room = ChatRoom.new
  end

  def show
    @chat_rooms = ChatRoom.all
    @chat_room = ChatRoom.find_by(id: params[:id])
    @messages = @chat_room.messages
  end

  def create
    @chat_room = current_user.chat_rooms.build(chat_room_params)
    @chat_room.save
  end

  private

  def chat_room_params
    params.require(:chat_room).permit(:name)
  end
end

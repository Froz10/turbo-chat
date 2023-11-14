class ChatsController < ApplicationController
  def index
    @chats = Chat.all
    @chat = current_user.chats.build
  end

  def create
    @chat = current_user.chats.build(chat_params)
    @chat.save
    respond_to do |format|
      if @chat.save
        format.turbo_stream { render :create, locals: { chat: @chat } }
      end
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:name)
  end

  def set_chat
    @chat = Chat.find(params[:id])
  end
end

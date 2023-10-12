class RoomsController < ApplicationController
  def home
    @chats = Chat.all
  end
end

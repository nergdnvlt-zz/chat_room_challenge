class ChatRoomController < ApplicationController
  def show
    @chat = ChatRoom.includes(:messages).find_by(id: params[:id])
  end
end

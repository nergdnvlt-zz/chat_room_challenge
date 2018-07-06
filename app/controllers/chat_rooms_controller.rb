class ChatRoomsController < ApplicationController
  def show
    @chat = ChatRoom.includes(:messages).find(params[:id])
    @chat_messages = @chat.messages.order(created_at: 'ASC')
  end
end

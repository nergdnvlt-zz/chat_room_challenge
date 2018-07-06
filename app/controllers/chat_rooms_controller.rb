class ChatRoomsController < ApplicationController
  def index
    @user = current_user
    @chats = @user.chat_rooms
  end
  def show
    @chat = ChatRoom.includes(:messages).find(params[:id])
    @chat_messages = @chat.messages.order(created_at: 'ASC')
    @message = Message.new()
  end
end

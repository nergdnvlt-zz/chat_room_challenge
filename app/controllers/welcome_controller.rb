class WelcomeController < ApplicationController
  def index
  end

  def create
    user = User.find_by(username: params[:username])
    session[:user_id] = user.id
    redirect_to login_path(user.id)
  end

  def show
    binding.pry
    @user = User.find(params[:id])
    @chats = user.chat_rooms
  end
end

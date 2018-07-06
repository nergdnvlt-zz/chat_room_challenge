class User < ApplicationRecord
  validates_presence_of :username

  has_many :user_chats, dependent: :destroy
  has_many :chat_rooms, through: :user_chats
  has_many :messages, dependent: :destroy
end

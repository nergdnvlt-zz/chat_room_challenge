class Message < ApplicationRecord
  validates_presence_of :text

  belongs_to :user
  belongs_to :chat_room
end

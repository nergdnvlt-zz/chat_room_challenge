require 'rails_helper'

describe User do
  describe 'Validations' do
    it { should validate_presence_of :username }
  end

  describe 'relationships' do
    it { should have_many :user_chats }
    it { should have_many :chat_rooms }
  end
end

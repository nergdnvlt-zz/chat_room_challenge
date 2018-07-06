require 'rails_helper'

describe ChatRoom do
  describe 'Validations' do
    it { should validate_presence_of :title }
  end

  describe 'relationships' do
    it { should have_many :user_chats }
    it { should have_many :users }
  end
end

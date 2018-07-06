require 'rails_helper'

describe UserChat do
  describe 'Relationships' do
    it { should belong_to :user }
    it { should belong_to :chat_room }
  end
end

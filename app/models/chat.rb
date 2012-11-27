class Chat < ActiveRecord::Base
	has_many :users, :through => :chat_sessions
	has_many :chats_sessions
	has_many :messages
end

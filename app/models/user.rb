class User < ActiveRecord::Base
	has_many :chats, :through => :chat_sessions
	has_many :chat_sessions
	has_many :messages

	before_save :create_remember_token

	def enter(chat)
		self.chat_sessions.create(chat_id: chat.id)
	end

	private

	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end

	
end

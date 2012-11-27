class User < ActiveRecord::Base
	has_many :chats, :through => :chats_users
	has_many :messages

	before_save :create_remember_token

	private

	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end

	
end

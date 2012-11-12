class User < ActiveRecord::Base
	has_and_belongs_to_many :chats
	has_many :messages

	before_save :create_remember_token

	private

	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end

	
end

class Chat < ActiveRecord::Base

	has_many :users, :through => :chat_sessions
	has_many :chat_sessions
	has_many :messages

	def associate(user)
		self.chat_sessions.create(user_id: user.id)
	end
end

class Message < ActiveRecord::Base
	after_create :publish

	belongs_to :user
	belongs_to :chat

private
	def publish
		client = Faye::Client.new("http://localhost:9292/faye")
		publication = client.publish("/messages/public", {
			user: self.user.name,
			message: self.message,
			created: self.created_at.strftime("%k:%M")
		})
	end
end

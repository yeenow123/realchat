class MessagesController < ApplicationController
	def create
		@user = current_user
		@message = @user.messages.new(params[:message])
		
		@message.save
	end

	def index
		@messages = Message.where('created_at > ?', Time.at(params[:after].to_i + 1))
	end
end

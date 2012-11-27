class MessagesController < ApplicationController
	def create
		@user = current_user
		@chat = Chat.find(params[:id])
		@message = @user.@chat.messages.new(params[:message])
		
		@message.save
	end

end

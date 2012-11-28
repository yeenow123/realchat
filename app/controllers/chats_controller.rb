class ChatsController < ApplicationController

	def create
		@chat = Chat.new
		@chat.live = true
		if @chat.save
			@chat.associate(current_user)
			redirect_to @chat
		end
	end

	def show
		@chat = Chat.find(params[:id])
		
		@message = @chat.messages.new
		@messages = @chat.messages.all
	end

	
end

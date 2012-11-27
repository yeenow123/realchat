class ChatsController < ApplicationController
	def create
		@chat = Chat.new
		@chat.user_id = current_user
		@chat.live = true
		if @chat.save
			redirect_to @chat
		end
	end

	def show
		@chat = Chat.find(params[:id])
		@message = @chat.users.first.messages.new
		@messages = @chat.messages.all
	end
end

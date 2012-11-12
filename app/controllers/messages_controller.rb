class MessagesController < ApplicationController
	def create
		@user = current_user
		@message = @user.messages.new(params[:message])
		if @message.save
			flash[:success] = "You sent a message!"
			redirect_to root_path
		end
	end
end

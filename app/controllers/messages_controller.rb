class MessagesController < ApplicationController
	def create
		@user = current_user
		@message = @user.messages.new(params[:message])
		
		@message.save
	end

end

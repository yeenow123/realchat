class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:success] = "Start chatting!"
			sign_in @user
			redirect_to @user
		else
			render 'new'
		end
	end

	def show
		@user = current_user
		@message = Message.new
		@messages = Message.where('created_at > ?', Time.at(params[:after].to_i))
	end


end

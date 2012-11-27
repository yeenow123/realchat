class UsersController < ApplicationController

	before_filter :correct_user, only: [:show]

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
	end

	private

	def correct_user
		@user = User.find(params[:id])
		unless current_user?(@user)
			redirect_to signin_path
		end
	end
end

class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.find_by_name(params[:name])
		sign_in user
		redirect_to user_path(user)
	end

	def destroy
		sign_out
		redirect_to root_path
	end
end

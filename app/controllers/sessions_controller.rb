class SessionsController < ApplicationController
	def index
		if @user
			redirect_to '/'
		end
	end

	def create
		user = User.check_user(params[:username], params[:password])
		if user
			session[:user_id] = user.id
			redirect_to '/'
		else
			flash[:status] = false
			flash[:message] = "Wrong username or password"
			redirect_to sessions_path
		end
	end

	def destroy
		session[:user_id] = nil
		session[:username] = nil
		redirect_to login_path
	end
end
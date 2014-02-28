class SignupsController < ApplicationController


	def index
		if session[:user_id]
			redirect_to '/'
		end
	end

	def create
		User.create({:username => params[:username],
			:password_hash => Digest::MD5.hexdigest(params[:password]),
			:first_name => params[:first_name],
			:last_name => params[:last_name],
			:user_type_id => 3
			});
		
		redirect_to login_path
	end

end


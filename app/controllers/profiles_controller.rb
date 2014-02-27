class ProfilesController < ApplicationController

	def index
		if not session[:user_id]
			redirect_to '/'
		end
		@user = User.where(id: session[:user_id]).take
	end

end
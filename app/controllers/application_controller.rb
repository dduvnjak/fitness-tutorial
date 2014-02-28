class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check_login

  def check_login
  	if @user || session[:user_id]
  		@user = User.find(session[:user_id]) unless @user
  	end
  end

  def require_login
    if @user || session[:user_id]
      @user = User.find(session[:user_id]) unless @user
    else
      redirect_to :root
    end
  end
end

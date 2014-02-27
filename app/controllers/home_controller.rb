class HomeController < ApplicationController
  before_filter :check_login, :only => [:index]
  
  def index
  end
  
end
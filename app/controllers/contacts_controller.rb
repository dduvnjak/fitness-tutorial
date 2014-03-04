class ContactsController < ApplicationController

	def new
    	@message = Message.new
	end

  	def create
    	@message = Message.new(params[:message])
    
    	if @message.valid?
      		MessagesMailer.new_message(@message).deliver
      		render :thank_you
    	else
      		render :new
    end
  	end

end

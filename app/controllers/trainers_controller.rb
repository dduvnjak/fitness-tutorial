class TrainersController < ApplicationController

  def index
  end

  def create
    trainer = Trainer.create(user_params.merge(:user => User.all.first))
    flash[:info] = "You have successfuly created new trainer '#{trainer.full_name}'"
    redirect_to trainers_path()
  end


  def update

    trainer = Trainer.find(params[:ID])

    
    trainer.first_name = params[:first_name]
    trainer.last_name = params[:last_name]
    trainer.header = params[:header]
    trainer.description = params[:description]
    trainer.hour_price = params[:hour_price]

    trainer.save

    redirect_to trainers_path  
  end

  def destroy
    trainer = Trainer.find(params[:id])
    trainer.destroy
    flash[:info] = "You have successfuly deleted trainer '#{trainer.full_name}'"
    redirect_to trainers_path
  end

private
  
  def user_params
     params.permit(:first_name, :last_name, :hour_price, :header, :description)
   end
  
end
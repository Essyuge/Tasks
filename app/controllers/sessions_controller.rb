class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: [:create,:destroy] 
  def create
    user= User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])   

      session[:user_id]=user.id
      
      render json: user, status: :ok
      
      else 
      
      render json: "invalid credentials", status: :unauthorized
  end
end

  def destroy
    session.delete( :user_id)   #logging user out by removing the id from our ses sion
  end
end

class UsersController < ApplicationController
    skip_before_action :authenticate_user, only: [:create] 
   
        def show 
            user=User.find(params[:id]) 
            render json: user, status: :ok
        end
         #POST user
        def create
         user = User.create!(user_params)
            session[:user_id]= user.id
            render json: user, status: :ok
        
        end
 
    
    
        private
        def user_params
            params.permit(:name, :email, :password)
        end

        
end

        # rescue ActiveRecord::RecordInvalid =>invalid
        #     render json: {message: invalid.record.errors.full_messages} , status: 
        #     :unprocessable_entity

        # rescue ActiveRecord::RecordNotFound=>error 
        #     render json: {message: error.message}

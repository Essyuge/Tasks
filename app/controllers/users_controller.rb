class UsersController < ApplicationController
 before_action :find_user, only: [:show, :update]

        #GET user by id
        # def index
        # render json: User.all, status: :ok
        # end
        def show 
            render json: @user, status: :ok
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

        def find_user
            @user=User.find(params[:id]) 
        end
end

        # rescue ActiveRecord::RecordInvalid =>invalid
        #     render json: {message: invalid.record.errors.full_messages} , status: 
        #     :unprocessable_entity

        # rescue ActiveRecord::RecordNotFound=>error 
        #     render json: {message: error.message}

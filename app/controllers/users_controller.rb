class UsersController < ApplicationController
    def index
        render json: User.all, status: :ok
        end
    
        def show 
            user= User.find(params[:id])
            render json: user, status: :ok
        end
        def create
    
         user = User.create(user_params)
         render json: user, status: :created
    
        end
        def update
            user=User.find(params[:id])
            user.update(task_params)
            render json: user, status: :ok
        end
        def destroy 
            
            user= User.find(params[:id])
            user.destroy
            head :no_content
    
        end
    
        private
        def user_params
            params.permit(:name, :email, :password)
        end
end

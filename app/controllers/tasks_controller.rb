class TasksController < ApplicationController
    def index
   

    render json: Task.all, status: :ok
    end

    # def show 
    # end
    # def create
    # end
    # def update
    # end
    # def destroy 
    # end

end

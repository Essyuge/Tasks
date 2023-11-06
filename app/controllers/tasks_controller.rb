class TasksController < ApplicationController
    before_action :find_task, only: [:show, :update, :destroy]
    
#GET /tasks
    def index
    render json: Task.all, status: :ok
    end


#GET /tasks/:id
    def show 
        render json: @task, include: :user, status: :ok
    end

#POST /tasks
    def create
     task = Task.create!(task_params)
     render json: task, status: :created
    end
    
#PUT /tasks/:id
    def update
        @task.update!(task_params)
        render json: task, status: :accepted

    end


#DELEKE /tasks/:id
    def destroy 
        task.destroy
        head :no_content
    end


    private
    def task_params
        params.permit(:title, :description, :subtask, :due_date, :priority, :status, :tags, :completed, :user_id)
    end
    def find_task
        @task=Task.find(params[:id])
    end
   

end

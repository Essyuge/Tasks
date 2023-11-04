class TasksController < ApplicationController
    def index
   

    render json: Task.all, status: :ok
    end

    def show 
        task= Task.find(params[:id])
        render json: task, status: :ok
    end
    def create

     task = Task.create(task_params)
     render json: task, status: :created

    end
    def update
        task=Task.find(params[:id])
        task.update(task_params)
        render json: task, status: :ok
    end
    def destroy 
        task=Task.find(params[:id])
        task.destroy
        head :no_content

    end

    private
    def task_params
        params.permit(:title, :description, :subtask, :due_date, :priority, :status, :tags, :completed, :user_id)
    end

end

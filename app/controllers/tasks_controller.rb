class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy, :mark_as_done]
    before_action :all_task, only: [:index, :new, :show, :edit]

    def index
        @tasks = Task.all
        @completed_tasks = Task.where(completed: true)
    end

    def mark_as_done
        if @task
            @task.update(completed: true)
            redirect_to tasks_path, notice: "Task done!"
        else
            redirect_to tasks_path, notice: "Task not found"
        end
    end

    def show
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)

        if @task.save
            redirect_to tasks_path, notice: "Task added!"
        else
            redirect_to new_task_path, notice: "No added task."
        end
    end

    def edit
    end

    def update
        if @task.update(task_params)
            redirect_to task_path(@task), notice: "Updated task successfully."
        else
            render :edit
        end
    end

    def destroy
        @task.destroy
        redirect_to tasks_path, notice: "Task successfully deleted." 
    end

    private

    def task_params
        params.require(:task).permit(:task_name, :body)
    end

    def set_task
        @task = Task.find(params[:id])
    end

    def all_task
        @tasks = Task.all
    end

end

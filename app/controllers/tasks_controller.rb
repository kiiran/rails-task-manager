class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(tasks_params)
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task = Task.update(tasks_params)
    redirect_to task_path(params[:id])
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def tasks_params
    params.require(:task).permit(:name, :description)
  end
end

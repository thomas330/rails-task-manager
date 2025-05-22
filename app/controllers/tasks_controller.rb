class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def find
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end

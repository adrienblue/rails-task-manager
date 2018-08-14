class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end


  def new
    @task = Task.new
    # displays the form
  end

  def create
    Task.create!(task_params)
    redirect_to tasks_path
    # redirect_to Tasks_path
    # receives the form data and creates in db
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update!(task_params)
    redirect_to tasks_path(@task.id)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy!
    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

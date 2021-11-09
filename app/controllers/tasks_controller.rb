class TasksController < ApplicationController
  before_action :target_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
    target_task
    if @task.completed == false
      @status = 'The task is currently incompleted'
    else
      @status = 'The task is completed!'
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new.html.erb'
    end
  end

  def edit
    target_task
  end

  def update
    target_task
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    target_task
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def target_task
    @task = Task.find(params[:id])
  end
end

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path, notice: 'タスクが追加されました。'
    else
      render :new
    end
  end

  private

  # Strong Parameters: 許可するパラメータを指定
  def task_params
    params.require(:task).permit(:title, :details, :deadline, :status)
  end
end

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
  end

  # 詳細を表示するメソッド
  def show
    @task = Task.find(params[:id])
  end

  private
  def task_params
    params.require(:task).permit(:title, :text)
  end
end

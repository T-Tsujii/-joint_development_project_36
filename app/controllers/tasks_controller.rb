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

  # 編集を表示するメソッド
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  private
  def task_params
    params.require(:task).permit(:title, :text)
  end
end

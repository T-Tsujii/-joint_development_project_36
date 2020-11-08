class TasksController < ApplicationController
  # 一覧メソッド
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  # 作成メソッド
  def create
    Task.create(task_params)
  end

  # 詳細メソッド
  def show
    @task = Task.find(params[:id])
  end

  # 編集メソッド
  def edit
    @task = Task.find(params[:id])
  end

  # 編集内容の更新
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  # 削除メソッド
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :text)
  end
end

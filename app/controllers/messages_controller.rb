class MessagesController < ApplicationController

  # 一覧表示機能
  def index
    @messages = Message.all
  end

  # 新規投稿機能
  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
  end

  # 詳細表示機能
  def show
    @message = Message.find(params[:id])
  end

  private
  # ストロングパラメータ
  def message_params
    params.require(:message).permit(:title, :body)
  end

end

class MessagesController < ApplicationController

  # 新規投稿機能
  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
  end

  private
  # ストロングパラメータ
  def message_params
    params.require(:message).permit(:title, :body)
  end

end

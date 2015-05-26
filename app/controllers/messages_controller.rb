class MessagesController < ApplicationController
  def index 
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    
    if @message.save
      redirect_to request.referer, notice: "留言成功"
    else
      redirect_to request.referer, notice: "留言失敗,請稍後再試"
    end
  end

  private
  def message_params
    params.require(:message).permit(:nickname, :msg)
  end
end

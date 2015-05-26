class SettingController < ApplicationController

  def edit_init_time
  end

  def update_init_time
    init_time = Time.new(params[:year], params[:month], params[:date], params[:hour], params[:min], params[:sec]) - params[:place].to_i
    @wheel = Wheel.first || Wheel.new
    @wheel.init_time = init_time
    @wheel.user_id = current_user.id
    
    if @wheel.save
      redirect_to request.referer, notice: "時間已更新"
    else
      redirect_to request.referer, notice: "更新失敗,請稍後再試"
    end
  end
end

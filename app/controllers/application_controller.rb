class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def authenticate_shaohao!
    if not current_user.try(:admin?) and not current_user.try(:author?) and not current_user.try(:shaohao?)
      redirect_to root_path, notice: "請先登入管理者帳號"
    end
  end

  def authenticate_author!
    if not current_user.try(:admin?) and not current_user.try(:author?)
      redirect_to root_path, notice: "請先登入管理者帳號"
    end
  end

  def authenticate_admin!
    unless current_user.try(:admin?)
      redirect_to root_path, notice: "請先登入最高權限帳號"
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:account_update) << :username
  end
end

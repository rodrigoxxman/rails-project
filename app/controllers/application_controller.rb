class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private
  def current_user
    Employee.where(id: session[:user_id]).first
  end
  helper_method :current_user
end
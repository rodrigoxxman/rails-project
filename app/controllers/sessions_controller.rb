class SessionsController < ApplicationController
  def new
  end

  def create
  	user = Employee.find_by_nombre(params[:nombre])
  	pass = Employee.find_by_contrasena(params[:contrasena])
    if user && pass
      session[:user_id] = user.id
      redirect_to '/page/index', notice: 'Logged in!'
    else
      render :new
    end
  end
  def destroy
  	 session[:user_id] = nil
    redirect_to '/welcome/index', notice: 'Logged out!'
  end
end
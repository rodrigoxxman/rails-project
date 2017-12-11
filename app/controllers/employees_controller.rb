class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end
 
  def show
    @employee = Employee.find(params[:id])
  end
 
  def new
    @employee = Employee.new
  end
 
  def edit
    @employee = Employee.find(params[:id])
  end
 
  def create
    @employee = Employee.new(employee_params)
 
    if @employee.save
       session[:user_id] = @employee.id
      redirect_to '/employees', notice: 'User was successfully created.'
    else
      render 'new'
    end
   
  end
 
  def update
    @employee = Employee.find(params[:id])
 
    if @employee.update(employee_params)
      redirect_to @employee
    else
      render 'edit'
    end
  end
 
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
 
    redirect_to employees_path
  end
 
  private
    def employee_params
      params.require(:employee).permit(:codigo, :nombre, :apellido, :area, :contrasena)
    end
end
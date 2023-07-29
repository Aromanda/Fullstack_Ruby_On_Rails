# app/controllers/employees_controller.rb
class EmployeesController < ApplicationController
  before_action :authenticate_user! # Assuming you are using Devise for authentication
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
    @employee.build_user # Create an associated user object for the new employee
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to @employee, notice: 'Employee was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
      redirect_to @employee, notice: 'Employee was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @employee.destroy
    redirect_to employees_url, notice: 'Employee was successfully deleted.'
  end

  private

  def set_employee
    if params[:id]
      @employee = Employee.find(params[:id])
    end
  end

  def employee_params
    params.require(:employee).permit(:phone, :email, user_attributes: [:id, :name])
  end
end
  
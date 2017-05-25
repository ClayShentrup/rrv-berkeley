class Clerk::DepartmentsController < ApplicationController
  before_action(:set_department, only: %i[show edit update destroy])

  def index
    @departments = Department.all
    respond_with(@departments)
  end

  def show
    respond_with(@department)
  end

  def new
    @department = Department.new
    respond_with(@department)
  end

  def edit
  end

  def create
    @department = Department.create(department_params)
    respond_with(:clerk, @department)
  end

  def update
    @department.update(department_params)
    respond_with(:clerk, @department)
  end

  def destroy
    @department.destroy
    respond_with(:clerk, @department)
  end

  private

  def set_department
    @department = Department.find(params.require(:id))
  end

  def department_params
    params.require(:department).permit(:name)
  end
end

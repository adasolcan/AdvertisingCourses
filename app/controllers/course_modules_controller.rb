class CourseModulesController < ApplicationController
  before_action :set_course_module, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course_modules = CourseModule.all
    respond_with(@course_modules)
  end

  def show
    respond_with(@course_module)
  end

  def new
    @course_module = CourseModule.new
    respond_with(@course_module)
  end

  def edit
  end

  def create
    @course_module = CourseModule.new(course_module_params)
    @course_module.save
    respond_with(@course_module)
  end

  def update
    @course_module.update(course_module_params)
    respond_with(@course_module)
  end

  def destroy
    @course_module.destroy
    respond_with(@course_module)
  end

  private
    def set_course_module
      @course_module = CourseModule.find(params[:id])
    end

    def course_module_params
      params.require(:course_module).permit(:name, :abreviation)
    end
end

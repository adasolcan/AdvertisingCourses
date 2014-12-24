class CourseTypesController < ApplicationController
  before_action :set_course_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course_types = CourseType.all
    respond_with(@course_types)
  end

  def show
    respond_with(@course_type)
  end

  def new
    @course_type = CourseType.new
    respond_with(@course_type)
  end

  def edit
  end

  def create
    @course_type = CourseType.new(course_type_params)
    @course_type.save
    respond_with(@course_type)
  end

  def update
    @course_type.update(course_type_params)
    respond_with(@course_type)
  end

  def destroy
    @course_type.destroy
    respond_with(@course_type)
  end

  private
    def set_course_type
      @course_type = CourseType.find(params[:id])
    end

    def course_type_params
      params.require(:course_type).permit(:name)
    end
end

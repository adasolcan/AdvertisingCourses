class CourseEnrolmentsController < ApplicationController
  before_action :set_course_enrolment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course_enrolments = CourseEnrolment.all
    respond_with(@course_enrolments)
  end

  def show
    respond_with(@course_enrolment)
  end

  def new
    @course_enrolment = CourseEnrolment.new
    respond_with(@course_enrolment)
  end

  def edit
  end

  def create
    @course_enrolment = CourseEnrolment.new(course_enrolment_params)
    @course_enrolment.save
    respond_with(@course_enrolment)
  end

  def update
    @course_enrolment.update(course_enrolment_params)
    respond_with(@course_enrolment)
  end

  def destroy
    @course_enrolment.destroy
    respond_with(@course_enrolment)
  end

  private
    def set_course_enrolment
      @course_enrolment = CourseEnrolment.find(params[:id])
    end

    def course_enrolment_params
      params.require(:course_enrolment).permit(:user_id, :session_id)
    end
end

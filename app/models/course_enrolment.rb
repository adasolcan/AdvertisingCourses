class CourseEnrolment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course_session

  def show_by_user_id(options={})
      CourseEnrolment.where(user_id: options[:user_id])
  end

  def show_by_course_session_id(options={})
      CourseEnrolment.where(course_session_id: options[:course_session_id])
  end

end

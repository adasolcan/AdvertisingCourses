class CourseSession < ActiveRecord::Base
  belongs_to :course
  belongs_to :user

  has_many :course_enrolment, :foreign_key => "course_session_id"
end

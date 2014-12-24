class Course < ActiveRecord::Base
  belongs_to: course_type
  has_many :course_session, :foreign_key => "course_id"
end

class CourseType < ActiveRecord::Base
  has_many :course, :foreign_key => "course_type_id"
end

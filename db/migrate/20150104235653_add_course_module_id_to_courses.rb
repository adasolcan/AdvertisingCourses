class AddCourseModuleIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :course_module_id, :integer
  end
end

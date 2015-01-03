class AddStatusToCourseEnrolments < ActiveRecord::Migration
  def change
    add_column :course_enrolments, :status, :string
  end
end

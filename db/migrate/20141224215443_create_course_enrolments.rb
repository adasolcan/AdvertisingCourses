class CreateCourseEnrolments < ActiveRecord::Migration
  def change
    create_table :course_enrolments do |t|
      t.integer :user_id
      t.integer :session_id

      t.timestamps
    end
  end
end

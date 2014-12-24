class CreateCourseSessions < ActiveRecord::Migration
  def change
    create_table :course_sessions do |t|
      t.integer :course_id
      t.integer :instructor_id
      t.datetime :date_time
      t.string :place

      t.timestamps
    end
  end
end

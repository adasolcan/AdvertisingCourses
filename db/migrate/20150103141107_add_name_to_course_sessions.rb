class AddNameToCourseSessions < ActiveRecord::Migration
  def change
    add_column :course_sessions, :name, :string
  end
end

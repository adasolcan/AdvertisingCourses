class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :level
      t.integer :course_type_id

      t.timestamps
    end
  end
end

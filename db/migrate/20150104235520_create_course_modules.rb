class CreateCourseModules < ActiveRecord::Migration
  def change
    create_table :course_modules do |t|
      t.string :name
      t.string :abreviation

      t.timestamps
    end
  end
end

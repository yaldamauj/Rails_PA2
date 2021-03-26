class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :requirement
      t.string :description
      t.string :code
      t.string :course_id
      t.array :sub

      t.timestamps
    end
  end
end

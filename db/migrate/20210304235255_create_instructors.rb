class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.string :email
      t.string :instructor_id
      t.string :first
      t.string :middle
      t.string :last

      t.timestamps
    end
  end
end

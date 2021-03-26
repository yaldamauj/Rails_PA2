class AddColToCourse < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :sub, :Subject , array: true, default: []
  end
end
class AddTeesToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :tees, :string
  end
end

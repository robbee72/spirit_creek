class CreateScorecardsCoursesJoin < ActiveRecord::Migration[5.1]
  def up
    create_table :scorecards_courses, :id => false do |t|
      t.integer "scorecard_id"
      t.integer "course_id"
      
    end
    add_index("scorecards_courses", ["scorecard_id", "course_id"])
  end
  
  def down
    drop_table :scorecard_courses
  end
end
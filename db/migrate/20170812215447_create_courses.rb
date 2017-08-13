class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :par_1
      t.integer :par_2
      t.integer :par_3
      t.integer :par_4
      t.integer :par_5
      t.integer :par_6
      t.integer :par_7
      t.integer :par_8
      t.integer :par_9
      t.integer :par_10
      t.integer :par_11
      t.integer :par_12
      t.integer :par_13
      t.integer :par_14
      t.integer :par_15
      t.integer :par_16
      t.integer :par_17
      t.integer :par_18 
      t.integer :total_par
      
      t.integer :yardage_1
      t.integer :yardage_2
      t.integer :yardage_3
      t.integer :yardage_4
      t.integer :yardage_5
      t.integer :yardage_6
      t.integer :yardage_7
      t.integer :yardage_8
      t.integer :yardage_9
      t.integer :yardage_10
      t.integer :yardage_11
      t.integer :yardage_12
      t.integer :yardage_13
      t.integer :yardage_14
      t.integer :yardage_15
      t.integer :yardage_16
      t.integer :yardage_17
      t.integer :yardage_18
      t.integer :total_yardage
    end
  end
end

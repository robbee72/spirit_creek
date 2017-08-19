class AddRoundsToScores < ActiveRecord::Migration[5.1]
  def change
    add_column :scorecards, :round_one, :integer
    add_column :scorecards, :round_two, :integer
    add_column :scorecards, :round_three, :integer
    add_column :scorecards, :round_final, :integer
  end
end

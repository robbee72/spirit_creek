class AddTotalToScorcards < ActiveRecord::Migration[5.1]
  def change
    add_column :scorecards, :total, :integer
  end
end

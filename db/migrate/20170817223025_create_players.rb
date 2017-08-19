class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :player_name
      t.string  :status
      t.timestamps
    end
  end
end

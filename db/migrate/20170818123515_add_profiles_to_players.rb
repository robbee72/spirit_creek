class AddProfilesToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :profile, :string
    add_column :players, :accomplishments, :string
  end
end

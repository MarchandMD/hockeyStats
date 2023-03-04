class AddDateToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :date, :string
  end
end

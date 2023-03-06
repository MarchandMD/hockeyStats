class DropPredictions < ActiveRecord::Migration[5.2]
  def change
    drop_table :predictions
  end
end

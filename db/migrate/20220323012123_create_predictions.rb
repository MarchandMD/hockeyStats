class CreatePredictions < ActiveRecord::Migration[5.2]
  def change
    create_table :predictions do |t|

      t.timestamps
    end
  end
end

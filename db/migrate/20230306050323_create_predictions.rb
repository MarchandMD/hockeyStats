class CreatePredictions < ActiveRecord::Migration[5.2]
  def change
    create_table :predictions do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.string :expected_outcome

      t.timestamps
    end
  end
end

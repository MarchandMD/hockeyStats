class UpdateStatusOnUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :games, :status, :string
  end
end

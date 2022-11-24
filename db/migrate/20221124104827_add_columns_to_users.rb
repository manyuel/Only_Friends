class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :location, :string
    add_column :users, :rate, :float
  end
end

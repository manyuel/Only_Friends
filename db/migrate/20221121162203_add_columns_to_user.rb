class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :text
    add_column :users, :rating, :float
    add_column :users, :friend_status, :boolean, default: false
  end
end

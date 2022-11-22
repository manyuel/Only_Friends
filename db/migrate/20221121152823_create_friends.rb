class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.float :rating
      t.float :rate
      t.text :bio

      t.timestamps
    end
  end
end

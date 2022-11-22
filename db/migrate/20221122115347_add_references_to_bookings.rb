class AddReferencesToBookings < ActiveRecord::Migration[7.0]
  def change
    change_table(:bookings) do |t|
      t.references :costumer, foreign_key: { to_table: 'users' }
      t.references :friend, foreign_key: { to_table: 'users' }
    end
  end
end

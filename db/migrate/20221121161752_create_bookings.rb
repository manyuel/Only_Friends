class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.boolean :confirmed?, default: false

      t.timestamps
    end
  end
end

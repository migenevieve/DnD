class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :date
      t.float :start_hour
      t.float :end_hour
      t.integer :guest_number
      t.references :user, null: false, foreign_key: true
      t.references :decor, null: false, foreign_key: true

      t.timestamps
    end
  end
end

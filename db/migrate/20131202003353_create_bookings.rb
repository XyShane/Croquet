class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :date
      t.string :lawn
      t.integer :user_id
      t.time :start_time
      t.time :end_time
      t.text :description

      t.timestamps
    end
  end
end

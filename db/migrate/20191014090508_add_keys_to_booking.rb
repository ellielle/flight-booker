class AddKeysToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booked_flight_id, :integer
    add_column :bookings, :booking_id, :integer
    add_index :bookings, :booked_flight_id
    add_index :bookings, :booking_id
  end
end

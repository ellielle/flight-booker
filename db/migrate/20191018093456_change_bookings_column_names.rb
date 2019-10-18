class ChangeBookingsColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :booking_id, :passenger_id
    rename_column :bookings, :booked_flight_id, :flight_id
  end
end

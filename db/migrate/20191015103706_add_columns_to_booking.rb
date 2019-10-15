class AddColumnsToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :first_name, :string
    add_column :bookings, :last_name, :string
    add_column :bookings, :email, :string
    add_column :bookings, :address, :string
    add_index :bookings, :email
  end
end

class AddIndexToFlights < ActiveRecord::Migration[5.2]
  def change
    add_index :flights, :from_airport_id
    add_index :flights, :to_airport_id
  end
end

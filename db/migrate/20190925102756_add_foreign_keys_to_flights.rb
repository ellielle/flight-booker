class AddForeignKeysToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :from_airport_id, :integer, index: true
    add_column :flights, :to_airport_id, :integer, index: true
    add_foreign_key :flights, :airports, column: :from_airport_id
    add_foreign_key :flights, :airports, column: :to_airport_id
  end
end

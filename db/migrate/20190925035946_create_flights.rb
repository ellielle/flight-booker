class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :origin
      t.integer :destination
      t.datetime :departure
      t.integer :duration

      t.timestamps
    end
    add_index :flights, :origin
    add_index :flights, :destination
  end
end

class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :start
      t.integer :destination
      t.datetime :time
      t.datetime :duration

      t.timestamps
    end
  end
end

class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :name
      t.string :code, limit: 3

      t.timestamps
    end
  end
end

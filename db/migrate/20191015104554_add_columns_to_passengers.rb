class AddColumnsToPassengers < ActiveRecord::Migration[5.2]
  def change
    rename_column :passengers, :name, :first_name
    add_column :passengers, :last_name, :string
    add_index :passengers, :email
  end
end

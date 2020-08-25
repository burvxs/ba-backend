class FixFlightNumberColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :flights, :flight_number, :flight_id 
  end
end

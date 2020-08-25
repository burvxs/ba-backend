class RenameFlightNumberColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :flight_number, :flight_id 
  end
end

class ChangeFlightIdBackToFlightNumber < ActiveRecord::Migration[5.2]
  def change
    rename_column :flights, :flight_id, :flight_number
  end
end

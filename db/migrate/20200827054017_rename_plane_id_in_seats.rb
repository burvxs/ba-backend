class RenamePlaneIdInSeats < ActiveRecord::Migration[5.2]
  def change
     rename_column :seats, :plane_id, :flight_id
  end
end

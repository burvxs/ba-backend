class AddColumnPlaneIdToSeats < ActiveRecord::Migration[5.2]
  def change
    add_column :seats, :plane_id, :integer
  end
end

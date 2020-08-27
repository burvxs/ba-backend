class AddColumnToPlanes < ActiveRecord::Migration[5.2]
  def change
    add_column :planes, :seats_created, :boolean
  end
end

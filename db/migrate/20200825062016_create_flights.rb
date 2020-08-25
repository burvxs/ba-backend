class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :plane_id
      t.integer :flight_number
      t.text :origin
      t.text :destination
      t.date :date

      t.timestamps
    end
  end
end

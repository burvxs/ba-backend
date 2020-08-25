class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :flight_number
      t.text :origin
      t.text :destination
      t.date :date

      t.timestamps
    end
  end
end

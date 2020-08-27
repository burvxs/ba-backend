class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.boolean :is_reserved
      t.string :reservee

      t.timestamps
    end
  end
end

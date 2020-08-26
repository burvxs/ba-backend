class Plane < ApplicationRecord
   has_many :flights

   def set_seat(row, column, is_reserved, reservee)
      if row > self.rows || column > self.columns
         puts "Row does not comply with this planes row count"
      else
         seat_data = {
            row: row,
            column: column,
            is_reserved: is_reserved,
            reservee: reservee
         }
      end
   end
=begin
   'get_seats' returns the seat_data array which contains
   a row hash which defines whether or not the seat is reserved
   and who has reserved it. See flights_controller for more information 
   on how this method is utilized.
=end
   def get_seats
      seat_data = Array.new(self.rows)
      seat_data.map! do |row| 
         is_reserved = [true, false].sample
         reservee = 'Empty'
         if is_reserved
            reservee = [User.first.name, User.second.name].sample
         end
         row = {
            is_reserved: is_reserved,
            reservee: reservee
         }
      end

      puts "Populated seating array with seat data."
      puts "Created #{seat_data.length} dummy seats."
      puts "Out of #{self.rows} rows and #{self.columns} columns"

      seat_data
   end
end

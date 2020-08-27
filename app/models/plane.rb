class Plane < ApplicationRecord
   has_many :flights
   attr_accessor :seats

   def set_seats(seats)
      @seats = seats
   end
=begin
   'get_seats' returns the seat_data array which contains
   a row hash which defines whether or not the seat is reserved
   and who has reserved it. See flights_controller for more information 
   on how this method is utilized.
=end
   def new_seats
      @seats = Array.new(self.rows)
      @seats.map! do |row| 
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
      puts "Created #{@seats.length} dummy seats."
      puts "Out of #{self.rows} rows and #{self.columns} columns"

      @seats
   end

   def get_seats 
      self.seats
   end
end

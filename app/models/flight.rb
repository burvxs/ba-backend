class Flight < ApplicationRecord
  has_many :reservations
  belongs_to :plane, :optional => true
  has_many :seats
   
   def get_seats
      self.seats
   end
=begin
   'get_seats' returns the seat_data array which contains
   a row hash which defines whether or not the seat is reserved
   and who has reserved it. See flights_controller for more information 
   on how this method is utilized.
=end
   def new_seats
      #self.seats.destroy_all
      seats = Seat.create_seats 20
      self.seats << seats
      #self.seats_created = true
      puts "Populated seating array with seat data."
      puts "Created #{seats.length} dummy seats."
      self.save()
      self.seats
   end

   def static_seats 
      unless self.seats_created
         seats = new_seats
      else
         seats = get_seats
      end
   end
end
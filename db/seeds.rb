# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


print "Creating Users..."
User.destroy_all

u1 = User.create!(
  name:'Ben',
  admin: true
)

u2 = User.create!(
  name:'Luke',
  admin: false
)

puts "Created #{ User.count } users:"

print "Creating Planes..."
Plane.destroy_all

p1 = Plane.create!(
  name:'Fighter Jet',
  rows: 20,
  columns: 6
)

p2 = Plane.create!(
  name:'Boeing 747',
  rows: 40,
  columns: 8
)

puts "Created #{ Plane.count } planes:"


print "Creating Flights..."
Flight.destroy_all

f1 = Flight.create!(
  plane_id: 23,
  flight_number: 327,
  origin: 'Sydney',
  destination: 'Melbourne',
  date:'18/08/2020'
)

f2 = Flight.create!(
  plane_id: 45,
  flight_number: 268,
  origin: 'Perth',
  destination: 'Brisbane',
  date:'21/08/2020'
)

puts "Created #{ Flight.count } flights:"

print "Creating Reservations..."
Reservation.destroy_all

r1 = Reservation.create!(
  flight_number: 235,
  origin: 'London',
  destination: 'Texas',
  date:'03/10/2020'
)

r2 = Reservation.create!(
  flight_number: 248,
  origin: 'New York',
  destination: 'L.A',
  date:'13/07/2020'
)

puts "Created #{ Reservation.count } reservations:"

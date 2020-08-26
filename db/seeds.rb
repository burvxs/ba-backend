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

u3 = User.create!(
  name:'Michael',
  admin: false
)

u4 = User.create!(
  name:'Sarah',
  admin: false
)

u5 = User.create!(
  name:'Zara',
  admin: false
)

u6 = User.create!(
  name:'Katie',
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

p3 = Plane.create!(
  name:'737',
  rows: 50,
  columns: 12
)

p4 = Plane.create!(
  name:'Jet',
  rows: 24,
  columns: 6
)

p5 = Plane.create!(
  name:'717',
  rows: 50,
  columns: 3
)

p6 = Plane.create!(
  name:'Nose Dive',
  rows: 20,
  columns: 2
)

puts "Created #{ Plane.count } planes:"

print "Creating Flights..."
Flight.destroy_all

f1 = Flight.create!(
  flight_number: 323,
  origin: 'Sydney',
  destination: 'Melbourne',
  date:'18/08/2020'
)

f2 = Flight.create!(
  flight_number: 111,
  origin: 'Perth',
  destination: 'Brisbane',
  date:'21/08/2020'
)

f3 = Flight.create!(
  flight_number: 231,
  origin: 'Sydney',
  destination: 'Brisbane',
  date:'21/03/2020'
)

f4 = Flight.create!(
  flight_number: 979,
  origin: 'Perth',
  destination: 'Sydney',
  date:'11/08/2020'
)

f5 = Flight.create!(
  flight_number: 949,
  origin: 'Glasgow',
  destination: 'Brisbane',
  date:'23/04/2020'
)

f6 = Flight.create!(
  flight_number: 932,
  origin: 'London',
  destination: 'Sydney',
  date:'23/09/2020'
)

p1.flights << f1
p2.flights << f2 << f3 << f1
p3.flights << f3
p4.flights << f4 << f5
p5.flights << f5
p6.flights << f6 << f1 << f3

puts "Created #{ Flight.count } flights:"

print "Creating Reservations..."
Reservation.destroy_all

r1 = Reservation.create!(
  origin: 'Sydney',
  destination: 'Melbourne',
  date:'18/08/2020'
)

r2 = Reservation.create!(
  origin: 'Perth',
  destination: 'Brisbane',
  date:'21/08/2020'
)

r3 = Reservation.create!(
  origin: 'Sydney',
  destination: 'Brisbane',
  date:'21/03/2020'
)

r4 = Reservation.create!(
  origin: 'Perth',
  destination: 'Sydney',
  date:'11/08/2020'
)

r5 = Reservation.create!(
  origin: 'Glasgow',
  destination: 'Brisbane',
  date:'23/04/2020'
)

r6 = Reservation.create!(
  origin: 'London',
  destination: 'Sydney',
  date:'23/09/2020'
)



f1.reservations << r1
f2.reservations << r2
f3.reservations << r3
f4.reservations << r4
f5.reservations << r5
f6.reservations << r6

puts "Created #{ Reservation.count } reservations:"

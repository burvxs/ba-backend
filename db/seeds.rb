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

f7 = Flight.create!(
  flight_number: 101,
  origin: 'Sydney',
  destination: 'London',
  date:'27/08/2020'
)

f8 = Flight.create!(
  flight_number: 102,
  origin: 'Sydney',
  destination: 'Madrid',
  date:'27/08/2020'
)
f9 = Flight.create!(
  flight_number: 131,
  origin: 'Sydney',
  destination: 'Amsterdam',
  date:'27/08/2020'
)
f10 = Flight.create!(
  flight_number: 501,
  origin: 'Sydney',
  destination: 'Osaka',
  date:'27/08/2020'
)
f11 = Flight.create!(
  flight_number: 141,
  origin: 'Sydney',
  destination: 'Kyoto',
  date:'27/08/2020'
)

f12 = Flight.create!(
  flight_number: 121,
  origin: 'Brisbane',
  destination: 'Vienna',
  date:'27/08/2020'
)
f13 = Flight.create!(
  flight_number: 431,
  origin: 'Brisbane',
  destination: 'London',
  date:'27/08/2020'
)

f14 = Flight.create!(
  flight_number: 854,
  origin: 'Brisbane',
  destination: 'Perth',
  date:'27/08/2020'
)

f15 = Flight.create!(
  flight_number: 853,
  origin: 'Brisbane',
  destination: 'Vienna',
  date:'27/08/2020'
)

f16 = Flight.create!(
  flight_number: 833,
  origin: 'Melbourne',
  destination: 'Rome',
  date:'27/08/2020'
)

f17 = Flight.create!(
  flight_number: 692,
  origin: 'Melbourne',
  destination: 'Cairo',
  date:'27/08/2020'
)
f18 = Flight.create!(
  flight_number: 539,
  origin: 'Melbourne',
  destination: 'Madrid',
  date:'27/08/2020'
)
f19 = Flight.create!(
  flight_number: 101,
  origin: 'Melbourne',
  destination: 'Sydney',
  date:'27/08/2020'
)

f20 = Flight.create!(
  flight_number: 124,
  origin: 'Sydney',
  destination: 'Melbourne',
  date:'28/08/2020'
)

f21 = Flight.create!(
  flight_number: 430,
  origin: 'Sydney',
  destination: 'Barcelona',
  date:'28/08/2020'
)

f22 = Flight.create!(
  flight_number: 968,
  origin: 'Sydney',
  destination: 'Beijing',
  date:'28/08/2020'
)

f23 = Flight.create!(
  flight_number: 005,
  origin: 'Sydney',
  destination: 'Hong Kong',
  date:'28/08/2020'
)

f24 = Flight.create!(
  flight_number: 332,
  origin: 'Melbourne',
  destination: 'Sydney',
  date:'28/08/2020'
)

f25 = Flight.create!(
  flight_number: 583,
  origin: 'Melbourne',
  destination: 'Hobart',
  date:'27/08/2020'
)

f26 = Flight.create!(
  flight_number: 758,
  origin: 'Melbourne',
  destination: 'Brisbane',
  date:'28/08/2020'
)

f27 = Flight.create!(
  flight_number: 249,
  origin: 'Melbourne',
  destination: 'Madrid',
  date:'27/08/2020'
)

f28 = Flight.create!(
  flight_number: 584,
  origin: 'Brisbane',
  destination: 'Sydney',
  date:'28/08/2020'
)

f29 = Flight.create!(
  flight_number: 573,
  origin: 'Brisbane',
  destination: 'Madrid',
  date:'28/08/2020'
)

f30 = Flight.create!(
  flight_number: 282,
  origin: 'Brisbane',
  destination: 'Melbourne',
  date:'28/08/2020'
)

f31 = Flight.create!(
  flight_number: 950,
  origin: 'Brisbane',
  destination: 'Sydney',
  date:'28/08/2020'
)

f32 = Flight.create!(
  flight_number: 342,
  origin: 'Brisbane',
  destination: 'Perth',
  date:'28/08/2020'
)

f1.new_seats
f2.new_seats
f3.new_seats
f4.new_seats
f5.new_seats
f6.new_seats
f7.new_seats
f8.new_seats
f9.new_seats
f10.new_seats
f11.new_seats
f12.new_seats
f13.new_seats
f14.new_seats
f15.new_seats 
f16.new_seats 
f17.new_seats
f18.new_seats
f19.new_seats
f20.new_seats
f21.new_seats
f22.new_seats
f23.new_seats
f24.new_seats
f25.new_seats
f26.new_seats
f27.new_seats
f28.new_seats
f29.new_seats
f30.new_seats
f31.new_seats
f32.new_seats


p1.flights << f1 << f7 << f8 << f22 << f23
p2.flights << f2 << f3 << f1 << f9 << f21 << f24 << f32
p3.flights << f3 << f10 << f12 << f20 << f25 << f31
p4.flights << f4 << f5 << f11 << f16 << f19 << f30
p5.flights << f5 << f13 << f15 << f18 << f26 << f29
p6.flights << f6 << f1 << f3 << f14 << f17 << f27 << f28

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

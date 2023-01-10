# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create 37 seats
#37.times do |n|
 # seat = Seat.new
 # seat.booked = false
  #seat.save
#end
 customer=Customer.create([
  {
    "name": "John Doe",
    "email": "johndoe@gmail.com",
    "password_digest": "123456"
  },
  {
    "name": "Jane Doe",
    "email": "janedoe@gmail.com",
    "password_digest": "abcdef"
  }
]),
vehicle=Vehicle.create( [
  {
    "vehicle_name": "Bus 1",
    "route_id": 1,
    "departure_time": "2020-09-12 12:00:00",
    "arrival_time": "2020-09-12 14:00:00",
    "no_of_seats": 50,
    "sacco_id": 1,
    "image": "bus1.jpg"
  },
  {
    "vehicle_name": "Bus 2",
    "route_id": 2,
    "departure_time": "2020-09-13 09:00:00",
    "arrival_time": "2020-09-13 12:00:00",
    "no_of_seats": 60,
    "sacco_id": 2,
    "image": "bus2.jpg"
  }
]),
routes=Route.create( [
  {
    "From_location": "Nairobi",
    "To_location": "Mombasa",
    "Price": 500
  },
  {
    "From_location": "Kisumu",
    "To_location": "Nakuru",
    "Price": 400
  }
])

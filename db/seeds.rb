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
 # seat.booked = "false"
  #seat.save
#end
saccos = Sacco.create([

    {
    name: "Modern Coast Sacoo",
    email: "moderncoast@gmail.com",
    password_digest: "123456",
    image_url: "https://media.glassdoor.com/sqll/4343459/modern-coast-squarelogo-1627543982986.png"
    },

    {
    name: "Easy Coach Sacoo",
    email: "easycoach@gmail.com",
    password_digest: "123456",
    image_url: "https://inbizlinks.co.ke/BizDirectory/images/user_profile/logo33.png"
    },

    {
    name: "Ena Coach Sacoo",
    email: "enacoach@gmail.com",
    password_digest: "123456",
    image_url: "https://pbs.twimg.com/profile_images/1184699014949822464/Gblzp7fu_400x400.jpg"
    },

    {
    name: "Mash Poa Sacoo",
    email: "mashpoa@gmail.com",
    password_digest: "123456",
    image_url: "https://cms.timbu.com/storage/photos/mash_bus_services_limited_1570795372.jpg"
    },

    {
    name: "Tahmeed Sacoo",
    email: "tahmeedsacoo@gmail.com",
    password_digest: "123456",
    image_url: "https://pbs.twimg.com/profile_images/1168729053836251136/EWTvTxNz_400x400.jpg"
    }
 ]), 
 seats = Seat.create([
  { "seat_no": 1, "status": "false" },
  { "seat_no": 2, "status": "false" },
  { "seat_no": 3, "status": "false" },
  { "seat_no": 4, "status": "false" },
  { "seat_no": 5, "status": "false" },
  { "seat_no": 6, "status": "false" },
  { "seat_no": 7, "status": "false" },
  { "seat_no": 8, "status": "false" },
  { "seat_no": 9, "status": "false" },
  { "seat_no": 10, "status": "false" },
  { "seat_no": 11, "status": "false" },
  { "seat_no": 12, "status": "false" },
  { "seat_no": 13, "status": "false" },
  { "seat_no": 14, "status": "false" },
  { "seat_no": 15, "status": "false" },
  { "seat_no": 16, "status": "false" },
  { "seat_no": 17, "status": "false" },
  { "seat_no": 18, "status": "false" },
  { "seat_no": 19, "status": "false" },
  { "seat_no": 20, "status": "false" },
  { "seat_no": 21, "status": "false" },
  { "seat_no": 22, "status": "false" },
  { "seat_no": 23, "status": "false" },
  { "seat_no": 24, "status": "false" },
  { "seat_no": 25, "status": "false" },
  { "seat_no": 26, "status": "false" },
  { "seat_no": 27, "status": "false" },
  { "seat_no": 28, "status": "false" },
  { "seat_no": 29, "status": "false" },
  { "seat_no": 30, "status": "false" },
  { "seat_no": 31, "status": "false" },
  { "seat_no": 32, "status": "false" },
  { "seat_no": 33, "status": "false" },
  { "seat_no": 34, "status": "false" },
  { "seat_no": 35, "status": "false" },
  { "seat_no": 36, "status": "false" },
  { "seat_no": 37, "status": "false" }
  ]), customer=Customer.create([
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
]),
vehicle=Vehicle.create( [
  {
    "vehicle_name": "Bus 1",
    "route_id": 1,
    "departure_time": "2020-09-12 12:00:00",
    "arrival_time": "2020-09-12 14:00:00",
    "no_of_seats": 37,
    "sacco_id": 1,
    "image": "bus1.jpg"
  },
  {
    "vehicle_name": "Bus 2",
    "route_id": 2,
    "departure_time": "2020-09-13 09:00:00",
    "arrival_time": "2020-09-13 12:00:00",
    "no_of_seats": 37,
    "sacco_id": 2,
    "image": "bus2.jpg"
  }
])
 

  #puts "done "
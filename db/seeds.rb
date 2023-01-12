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
 ])
 

  puts "done "

  #def Seat.create
   # 37.times do |n|
    #seat = Seat.new
    #seat.booked = true
   # end
      
  #end
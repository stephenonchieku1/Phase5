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
saccos = Sacco.create([

    {
    "name": "Modern Coast Sacoo",
    "email": "moderncoastsacco@gmail.com",
    "password_digest": "123456"
    "image_url": "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.glassdoor.com%2FOverview%2FWorking-at-Modern-Coast-EI_IE4343459.11%2C23.htm&psig=AOvVaw2ovcK0537EZRjFGa6PsdPm&ust=1673424556217000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCOjMrLPGvPwCFQAAAAAdAAAAABAS"
    },

    {
    "name": "Easy Coach Sacoo",
    "email": "easycoachsacco@gmail.com",
    "password_digest": "123456"
    "image_url": "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Fisk_kenya%2Fstatus%2F1333399219546288128&psig=AOvVaw119IAfjVpgt8Owjo1XLAY-&ust=1673424774157000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNCrzJzHvPwCFQAAAAAdAAAAABAD"
    },

    {
    "name": "Mololine Sacoo",
    "email": "mololinesacoo@gmail.com",
    "password_digest": "123456"
    "image_url": "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2FMoloLineServicesLimited%2F&psig=AOvVaw0fhVMGgtsASRGQ5-9O6sAg&ust=1673424927320000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCMjX9ubHvPwCFQAAAAAdAAAAABAD"
    },

    {
    "name": "Mash Poa Sacoo",
    "email": "mashpoa@gmail.com",
    "password_digest": "123456"
    "image_url": "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftimbu.com%2Fkenya%2Fbus%2Fmash-bus-services-limited%2Fonline-booking&psig=AOvVaw1Xe9LZ9gvWf1_37rlxvc-6&ust=1673425045322000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCMDJmZ7IvPwCFQAAAAAdAAAAABAH"
    },

    {
    "name": "Tahmeed Sacoo",
    "email": "tahmeedsacoo@gmail.com",
    "password_digest": "123456"
    "image_url": "https://play.google.com/store/apps/details?id=com.tahmeedcoach&hl=en_US&gl=US"
    },
 ])
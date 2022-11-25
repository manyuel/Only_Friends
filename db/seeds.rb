# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying all database..."
Booking.destroy_all
User.destroy_all

puts "creating friends"
harry = User.create!(name: "Harry Smith", role: "Friend", rate: 320, location: "Surrey", rating: 4.8, bio: "Likes playing football and a good boozer", email: "hello@email.com", password: "password123")
abdul = User.create!(name: "Abdul Kareem", role: "Friend", rate: 85, location: "Uxbridge", rating: 3.5, bio: "I really enjoy baking and playing cricket", email: "bye@email.com", password: "password123")
maggie = User.create!(name: "Maggie Poppy", role: "Friend", rate: 32.50, location: "Wesminster", rating: 0.1, bio: "3 times married. Love going to the cinema", email: "123@email.com", password: "password123")
julia = User.create!(name: "Julia Jenkins", role: "Friend", rate: 438.79, location: "Hackney", rating: 4.99, bio: "Professional runner and loves a good sunbathe", email: "whatever@gmial.com", password: "password123")
paulina = User.create!(name: "Paulina Rowling", role: "Friend", rate: 52.55, location: "Hackney", rating: 1.6, bio: "Live fast die young!", email: "paulina@email.com", password: "password123")
pedro = User.create!(name: "Pedro Mendoza", role: "Friend", rate: 531.49, location: "Chelsea", rating: 4.20, bio: "Im a aspiring footballer and enjoy game-night", email: "pedror@gmial.com", password: "password123")

file = open("app/assets/images/lady1.jpeg")
julia.photo.attach(io: file, filename: "nes.png", content_type: "image/jpeg")
julia.save

file = open("app/assets/images/harry1.jpg")
harry.photo.attach(io: file, filename: "nes.png", content_type: "image/jpeg")
harry.save

file = open("app/assets/images/lady.jpeg")
maggie.photo.attach(io: file, filename: "nes.png", content_type: "image/jpeg")
maggie.save

file = open("app/assets/images/man.jpeg")
abdul.photo.attach(io: file, filename: "nes.png", content_type: "image/jpeg")
abdul.save

file = open("app/assets/images/pedro1.jpg")
pedro.photo.attach(io: file, filename: "nes.png", content_type: "image/jpeg")
pedro.save

file = open("app/assets/images/paulina.jpg")
paulina.photo.attach(io: file, filename: "nes.png", content_type: "image/jpeg")
paulina.save

puts "creating costumers"
rick = User.create!(name: "Rick", role: "Costumer", rating: 1, bio: "Likes boardgames & videogames", email: "rick@email.com", password: "password123")
User.create!(name: "Mia", role: "Costumer", rating: 2, bio: "Likes outdoors & brain teasers", email: "mia@email.com", password: "password123")
User.create!(name: "Luke", role: "Costumer", rating: 2.5, bio: "Likes food, biking and birds. Dislikes politics", email: "luke@email.com", password: "password123")
User.create!(name: "Gilberto", role: "Costumer", rating: 5, bio: "Likes to be alone but mom is worried about lack of friends", email: "gil@gmail.com", password: "password123")

file = open("app/assets/images/lady1.jpeg")
rick.photo.attach(io: file, filename: "nes.png", content_type: "image/jpeg")
rick.save

puts "finished"

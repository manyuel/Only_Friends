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
User.create!(name: "Harry Potter", role: "Friend", rate: 320, location: "Surrey", rating: 4.8, bio: "Likes playing quidditch, long walks in the forbidden forests", email: "hello@email.com", password: "password123")
User.create!(name: "Boris Johnson", role: "Friend", rate: 85, location: "Uxbridge", rating: 3.5, bio: "Likes making fun of poor people, tackling children and zip-lining across London", email: "bye@email.com", password: "password123")
User.create!(name: "Theresa May", role: "Friend", rate: 32.50, location: "Wesminster", rating: 0.1, bio: "Likes running in fields of wheat, dislikes politics", email: "123@email.com", password: "password123")
User.create!(name: "Professor Snape", role: "Friend", rate: 438.79, location: "Hackney", rating: 600, bio: "Professor of the dark arts and loves a good sunbathe", email: "whatever@gmial.com", password: "password123")

puts "creating customers"
User.create!(name: "Rick", role: "Customer", rating: 1, bio: "Likes boardgames & videogames", email: "rick@email.com", password: "password123")
User.create!(name: "Mia", role: "Customer", rating: 2, bio: "Likes outdoors & brain teasers", email: "mia@email.com", password: "password123")
User.create!(name: "Luke", role: "Customer", rating: 2.5, bio: "Likes food, biking and birds. Dislikes politics", email: "luke@email.com", password: "password123")
User.create!(name: "Gilberto", role: "Customer", rating: 5, bio: "Likes to be alone but mom is worried about lack of friends", email: "gil@gmail.com", password: "password123")

puts "finished"

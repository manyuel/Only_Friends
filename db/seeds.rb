# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

puts "creating users"
User.create!(name: "Harry Potter", rating: 4.8, bio: "Likes playing quidditch, long walks in the forbidden forests", email: "hello@email.com", password: "password123")
User.create!(name: "Boris Johnson", rating: 3.5, bio: "Likes making fun of poor people, tackling children and zip-lining across London", email: "bye@email.com", password: "password123")
User.create!(name: "Theresa May", rating: 0.1, bio: "Likes running in fields of wheat, dislikes politics", email: "123@email.com", password: "password123")
User.create!(name: "Professor Snape", rating: 600, bio: "Professor of the dark arts and loves a good sunbathe", email: "whatever@gmial.com", password: "password123")

puts "finished"

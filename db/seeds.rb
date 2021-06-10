# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Fish.destroy_all
Post.destroy_all

puts "Creating Users"
u1 = User.create(username: "Stevie", password: "TODO")
u2 = User.create(username: "Marky Mark", password: "TODO")
u3 = User.create(username: "Juan", password: "TODO")
u4 = User.create(username: "Cheech", password: "TODO")


puts "Creating Post"
p1 = Post.create(date: "June 8 2021", description: "Great fish hes cool", image: "https://i.imgur.com/NqMMI8F.jpeg", water_type: "Freshwater", location: "Brooklyn")
p2 = Post.create(date: "June 9 2021", description: "Angelfish babies. Have too many, fun to watch them grow", image: "https://i.imgur.com/NqMMI8F.jpeg", water_type: "Freshwater", location: "Brooklyn")
p3 = Post.create(date: "June 10 2021", description: "Albino Oscar is way too big for my tank.", image: "https://i.imgur.com/NqMMI8F.jpeg", water_type: "Freshwater", location: "Brooklyn")
p4 = Post.create(date: "May 11 2021", description: "Moving and have to tear down my tank. Please take my Congo tetras", image: "https://i.imgur.com/NqMMI8F.jpeg", water_type: "Freshwater", location: "Brooklyn")
p5 = Post.create(date: "July 4 2021", description: "Neon tetras need a good home.", image: "https://i.imgur.com/NqMMI8F.jpeg", water_type: "Freshwater", location: "Brooklyn")

puts "Creating Fish"
Fish.create(user: u1, post: p1, name: "Fishy", care_level: 5)
Fish.create(user: u2, post: p2, name: "Pickles", care_level: 2)
Fish.create(user: u3, post: p3, name: "Swimmy", care_level: 9)
Fish.create(user: u4, post: p4, name: "Bubba", care_level: 6)
Fish.create(user: u1, post: p5, name: "Donkey", care_level: 7)
Fish.create(user: u2, post: p1, name: "Splishy", care_level: 10)

puts "Done!!!"
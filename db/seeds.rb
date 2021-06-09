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
u1 = User.create(username: "Stevie", password_digest: "TODO")


puts "Creating Post"
p1 = Post.create(date: "June 8 2021", description: "Great fish hes cool", image: "https://i.imgur.com/NqMMI8F.jpeg", water_type: "Freshwater", location: "Brooklyn")

puts "Creating Fish"
Fish.create(user: u1, post: p1, name: "Fishy", care_level: 5)

puts "Done!!!"
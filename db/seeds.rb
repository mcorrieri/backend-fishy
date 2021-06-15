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

puts "Creating Fish"
f1 = Fish.create(breed: "Pleco", carelevel: 5, tanksize: 5, watertype: "Freshwater", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/2004-02-02_Pterygoplichthys_pardalis_on_blue_gravel.jpg/1200px-2004-02-02_Pterygoplichthys_pardalis_on_blue_gravel.jpg")
f2 = Fish.create(breed: "Angelfish", carelevel: 3, tanksize: 30, watertype: "Freshwater", image: "https://images.saymedia-content.com/.image/t_share/MTczOTEzMTcxMzQ4Njk0MDgw/freshwater-angelfish-care-guide-facts-faq.jpg")
f3 = Fish.create(breed: "Clown Loach", carelevel: 1, tanksize: 40, watertype: "Freshwater", image: "https://www.fishkeepingworld.com/wp-content/uploads/2019/07/The-Clown-Loach-Care-Guide-A-Playful-Bottom-Dweller-For-Community-Tanks-Cover.jpg")
f4 = Fish.create(breed: "Tetra", carelevel: 5, tanksize: 40, watertype: "Freshwater", image: "https://www.aquariadise.com/wp-content/uploads/2020/06/congo-.jpg")
f5 = Fish.create(breed: "Knifefish", carelevel: 8, tanksize: 55, watertype: "Freshwater", image: "https://azgardens.com/wp-content/uploads/2017/06/Black-Ghost-Knifefish.jpg")
f6 = Fish.create(breed: "Lionfish", carelevel: 9, tanksize: 70, watertype: "Saltwater", image: "https://cdn.vox-cdn.com/thumbor/oDbW3_3ltOEcMWBBaWukoEwHlFg=/116x0:1381x949/1820x1213/filters:focal(116x0:1381x949):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/41531918/14813065178_2e03f973cd_o.0.0.jpg")
f7 = Fish.create(breed: "Clownfish", carelevel: 3, tanksize: 25, watertype: "Saltwater", image: "https://cdn.theatlantic.com/thumbor/PjnYq0VZZh3uX5imYR0PNInV1Kw=/0x100:3456x2044/1952x1098/media/img/2014/05/shutterstock_141051217/original.jpg")

puts "Creating Post"
p1 = Post.create(date: "June 15, 2021", description: "Bought", image: "https://cdn.shopify.com/s/files/1/1163/2672/products/L397-Panaqolus-Pleco-1_1024x1024.jpg?v=1561723517", location: "Brooklyn", price: 10, comment: "Fish was healthy", user_id: u1.id, fish_id: f1.id)
p2 = Post.create(date: "June 18, 2021", description: "Sold", image: "https://cdn.shopify.com/s/files/1/1163/2672/products/L397-Panaqolus-Pleco-1_1024x1024.jpg?v=1561723517", location: "Bed Stuy", price: 20, comment: "Fish was dead", user_id: u2.id, fish_id: f2.id)
p3 = Post.create(date: "July 30, 2021", description: "Bought", image: "https://cdn.shopify.com/s/files/1/1163/2672/products/L397-Panaqolus-Pleco-1_1024x1024.jpg?v=1561723517", location: "Queens", price: 400, comment: "Fish was super cool", user_id: u3.id, fish_id: f3.id)

puts "Done!!!"
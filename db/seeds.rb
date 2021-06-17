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
u5 = User.create(username: "Duey", password: "duey")


puts "Creating Fish"
f1 = Fish.create(breed: "Pleco", carelevel: 1, tanksize: 30, watertype: "Freshwater", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/2004-02-02_Pterygoplichthys_pardalis_on_blue_gravel.jpg/1200px-2004-02-02_Pterygoplichthys_pardalis_on_blue_gravel.jpg")
f2 = Fish.create(breed: "Angelfish", carelevel: 3, tanksize: 30, watertype: "Freshwater", image: "https://images.saymedia-content.com/.image/t_share/MTczOTEzMTcxMzQ4Njk0MDgw/freshwater-angelfish-care-guide-facts-faq.jpg")
f3 = Fish.create(breed: "Clown Loach", carelevel: 1, tanksize: 40, watertype: "Freshwater", image: "https://www.fishkeepingworld.com/wp-content/uploads/2019/07/The-Clown-Loach-Care-Guide-A-Playful-Bottom-Dweller-For-Community-Tanks-Cover.jpg")
f4 = Fish.create(breed: "Tetra", carelevel: 5, tanksize: 40, watertype: "Freshwater", image: "https://www.aquariadise.com/wp-content/uploads/2020/06/congo-.jpg")
f5 = Fish.create(breed: "Knifefish", carelevel: 8, tanksize: 55, watertype: "Freshwater", image: "https://azgardens.com/wp-content/uploads/2017/06/Black-Ghost-Knifefish.jpg")
f6 = Fish.create(breed: "Lionfish", carelevel: 9, tanksize: 70, watertype: "Saltwater", image: "https://cdn.vox-cdn.com/thumbor/oDbW3_3ltOEcMWBBaWukoEwHlFg=/116x0:1381x949/1820x1213/filters:focal(116x0:1381x949):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/41531918/14813065178_2e03f973cd_o.0.0.jpg")
f7 = Fish.create(breed: "Clownfish", carelevel: 5, tanksize: 25, watertype: "Saltwater", image: "https://cdn.theatlantic.com/thumbor/PjnYq0VZZh3uX5imYR0PNInV1Kw=/0x100:3456x2044/1952x1098/media/img/2014/05/shutterstock_141051217/original.jpg")
f8 = Fish.create(breed: "Discus", carelevel: 9, tanksize: 50, watertype: "Freshwater", image: "https://www.liveaquaria.com/images/categories/product/lg-113386-0128202-023.jpg")
f9 = Fish.create(breed: "Danios", carelevel: 1, tanksize: 5, watertype: "Freshwater", image: "http://azure.wgp-cdn.co.uk/app-practicalfishkeeping/features/4bb0c95f85839.jpg?&width=1200&height=630&mode=crop")
f10 = Fish.create(breed: "Gourami", carelevel: 3, tanksize: 15, watertype: "Freshwater", image: "https://www.liveaquaria.com/images/categories/large/lg89813PowderBlueDwarfGourami.jpg")
f11 = Fish.create(breed: "Butterflyfish", carelevel: 7, tanksize: 100, watertype: "Saltwater", image: "https://m.liveaquaria.com/images/categories/large/lg68663MertensiiButterflyfish.jpg")
f12 = Fish.create(breed: "Squirrelfish", carelevel: 6, tanksize: 80, watertype: "Saltwater", image: "https://www.liveaquaria.com/images/categories/large/lg_77321_Big_Eye_Black_Bar_Soldierfish.jpg")
f13 = Fish.create(breed: "Wrasse", carelevel: 5, tanksize: 50, watertype: "Saltwater", image: "https://www.liveaquaria.com/images/categories/large/lg_76307_Six_Line_Wrasse.jpg")
f14 = Fish.create(breed: "Eel", carelevel: 10, tanksize: 150, watertype: "Saltwater", image: "https://www.liveaquaria.com/images/categories/product/lg_042419_315.jpg")


puts "Creating Post"
p1 = Post.create(date: "June 15, 2021", description: "Moving and need to sell my sweet pleco", image: "https://cdn.shopify.com/s/files/1/1163/2672/products/L397-Panaqolus-Pleco-1_1024x1024.jpg?v=1561723517", location: "Brooklyn", price: 20, comment: "3", user_id: u1.id, fish_id: f1.id)
p2 = Post.create(date: "June 18, 2021", description: "Bred my Koi angels and need to sell some, hit me up", image: "https://www.liveaquaria.com/images/categories/large/lg_Koi_Angel_89611.jpg", location: "Park Slope", price: 10, comment: "5", user_id: u2.id, fish_id: f2.id)
p3 = Post.create(date: "April 10, 2021", description: "Zebra danio is getting bullied in my tank", image: "https://www.liveaquaria.com/images/categories/large/lg_89793_Zebra_Danioa.jpg", location: "Queens", price: 3, comment: "1", user_id: u3.id, fish_id: f9.id)

p4 = Post.create(date: "May 3, 2021", description: "He got too big and fat for my tank", image: "https://www.liveaquaria.com/images/categories/large/lg_89731_Clown_Loach.jpg", location: "Yonkers", price: 30, comment: "2", user_id: u4.id, fish_id: f3.id)
p5 = Post.create(date: "May 5, 2021", description: "He's the only one left so want him to have some friends", image: "http://cdn.shopify.com/s/files/1/0311/3149/articles/Cardinal_tetra_7f4cdeaf-d0d5-4814-b5b2-b0cbd1dd9446.jpg?v=1580991213", location: "Chelsea", price: 5, comment: "2", user_id: u5.id, fish_id: f4.id)
p6 = Post.create(date: "June 17, 2021", description: "He bit me!", image: "https://oceana.org/sites/default/files/shutterstock_273670535.jpg", location: "Cobble Hill", price: 400, comment: "9", user_id: u1.id, fish_id: f6.id)

p7 = Post.create(date: "April 30, 2021", description: "Selling because its a boring fish", image: "https://www.liveaquaria.com/images/categories/product/lg_95369_Black_Ice_Clownfish.jpg", location: "West Village", price: 300, comment: "1", user_id: u2.id, fish_id: f7.id)
p8 = Post.create(date: "April 23, 2021", description: "Gotta sell cuz my tank broke broke", image: "https://reefguide.org/pix/thumb2/squirrel4.jpg", location: "Queens", price: 400, comment: "1", user_id: u3.id, fish_id: f12.id)
p9 = Post.create(date: "June 6, 2021", description: "I just dont like gouramis", image: "https://i.ytimg.com/vi/3bw8Cz1zCww/maxresdefault.jpg", location: "Staten Island", price: 2, comment: "1", user_id: u4.id, fish_id: f10.id)

p10 = Post.create(date: "June 12, 2021", description: "I lost my job because this eel is just to beautiful not to look at. It has ruined my career, marriage, and 401k please buy this and save me.", image: "https://aquariumdynamics.com/wp-content/uploads/2020/08/Japanese-Dragon-Moray-Eel.jpg", location: "Park Slope", price: 1500, comment: "1", user_id: u5.id, fish_id: f14.id)
p11 = Post.create(date: "May 16, 2021", description: "Thought it was a male, selling because Im trying to breed", image: "https://www.discus.com/wp-content/uploads/sites/11/2019/10/3a1da0_3f563da642784df8a414bd3fa2662729mv2_d_4032_3024_s_4_2.jpg", location: "FiDi", price: 220, comment: "1", user_id: u1.id, fish_id: f8.id)
p12 = Post.create(date: "March 4, 2021", description: "Sadly got too big for my tank and have to sell, really don't want to :(", image: "https://i.pinimg.com/736x/ab/34/da/ab34da9bdbb98b52ddbd65629a972328.jpg", location: "Turle Bay", price: 160, comment: "1", user_id: u2.id, fish_id: f1.id)

p13 = Post.create(date: "October 30, 2021", description: "Moving and have to sell my black ghost knife", image: "https://www.sciencemag.org/sites/default/files/styles/article_main_large/public/cc_EBKYBR_copy.jpg?itok=EXSPpL2s", location: "Bay Ridge", price: 40, comment: "1", user_id: u3.id, fish_id: f5.id)
p14 = Post.create(date: "May 15, 2021", description: "Babies grew up and time to sell!", image: "https://www.liveaquaria.com/images/categories/thumbs/th_76179_Blue_Angel.jpg", location: "Brownsville", price: 15, comment: "1", user_id: u4.id, fish_id: f2.id)
p15 = Post.create(date: "December 30, 2021", description: "Switching to saltwater so gotta sell my lemon tetra", image: "https://www.aquariadise.com/wp-content/uploads/2020/03/lemon-tetra.webp", location: "Crown Heights", price: 25, comment: "1", user_id: u5.id, fish_id: f4.id)

p16 = Post.create(date: "March 6, 2021", description: "Massive golden banana eel, cant afford to feed him anymore!", image: "http://fishkeepingmentor.com/wp-content/uploads/2020/09/banana-eel-1024x723.jpg", location: "Red Hook", price: 700, comment: "3", user_id: u1.id, fish_id: f14.id)
p17 = Post.create(date: "June 9, 2021", description: "I forgot I dont have a fish tank", image: "https://m.liveaquaria.com/images/articles/276-best-reef-wrasses-pt2-82737.jpg", location: "Williamsburg", price: 20, comment: "3", user_id: u2.id, fish_id: f13.id)
p18 = Post.create(date: "July 14, 2021", description: "Selling my prize winning glofish tetra. Dont try to lowball me, I know what I have", image: "https://m.liveaquaria.com/images/categories/large/lg-glofish-cosmic-blue-tetra.jpg", location: "Prospect Park", price: 350, comment: "3", user_id: u1.id, fish_id: f4.id)

puts "Done!!!"

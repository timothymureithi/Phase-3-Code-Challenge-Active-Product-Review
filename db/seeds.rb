# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)


# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.   
puts "Creating reviews..."
Review.create(star_rating: 6, comment: "Descent", product_id: product1.id, user_id: user1.id)
Review.create(star_rating: 1, comment: "Worse", product_id: product1.id, user_id: user1.id)
Review.create(star_rating: 5, comment: "OK", product_id: product3.id, user_id: user2.id)
Review.create(star_rating: 8, comment: "Really Good", product_id: product2.id, user_id: user3.id)
Review.create(star_rating: 4, comment: "Slightly below average", product_id: product5.id, user_id: user2.id)
Review.create(star_rating: 7, comment: "It's alright, but not the best pen", product_id: product4.id, user_id: user3.id)
Review.create(star_rating: 9, comment: "Loved it", product_id: product3.id, user_id: user2.id)


puts "Seeding done!"
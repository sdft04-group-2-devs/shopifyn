# seeds.rb

# Method to generate random addresses

puts "started seed generation"
# def random_address
#     addresses = [
#       "123 Main Street",
#       "456 Elm Avenue",
#       "789 Oak Road",
#       "321 Pine Lane",
#       "987 Maple Drive",
#       "654 Cedar Court",
#       "987 Birch Avenue",
#       "123 Cherry Lane",
#       "456 Walnut Road",
#       "321 Willow Drive"
#     ]
#     addresses.sample
#   end
  
#   # Method to generate random text for comments
#   def random_comment
#     comments = [
#       "Great product!",
#       "Excellent service!",
#       "Highly recommended.",
#       "Not what I expected.",
#       "Fast delivery.",
#       "Poor quality.",
#       "Average product.",
#       "Would buy again.",
#       "Avoid this product.",
#       "Could be better."
#     ]
#     comments.sample
#   end
  
  # Seed data for order_items table
  10.times do

    addresses = [
      "123 Main Street",
      "456 Elm Avenue",
      "789 Oak Road",
      "321 Pine Lane",
      "987 Maple Drive",
      "654 Cedar Court",
      "987 Birch Avenue",
      "123 Cherry Lane",
      "456 Walnut Road",
      "321 Willow Drive"
    ]
    
    orderItem = OrderItem.create!(
      product_id: rand(1..10),
      user_id: rand(1..10),
      address: addresses.sample,
      order_quantity: rand(1..5)
    )
  end
  
  # Seed data for reviews table
#   10.times do
#     comments = [
#       "Great product!",
#       "Excellent service!",
#       "Highly recommended.",
#       "Not what I expected.",
#       "Fast delivery.",
#       "Poor quality.",
#       "Average product.",
#       "Would buy again.",
#       "Avoid this product.",
#       "Could be better."
#     ]
    
#     review = Review.create!(
#       star_rating: rand(1..10),
#       comment: comments.sample,
#       user_id: rand(1..10),
#       product_id: rand(1..10)
#     )
#   end

  puts "Done seeding"
  
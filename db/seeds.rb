# seeds.rb

# Method to generate random addresses

# puts "started seed generation"
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
      product_id: rand(1..6),
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
#       user_id: rand(1..3),
#       product_id: rand(1..10)
#     )
#   end

#   puts "Done seeding"
  
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.create([
#     {
#       username: "Maria Stephany",
#       email: "stephani21@gmail.com",
#       phone_no:0725367189 ,
#       role: "Seller",
#       profile_url: "https://th.bing.com/th/id/OIP.GlXqxcR9EmviN5kuwaUsMQHaIB?pid=ImgDet&rs=1",
#       password_digest: "tw3nty",
#       confirm_password: "tw3nty"
#     },

#     {
#         username: "John Doe",
#         email: "joeee@gmail.com",
#         phone_no:0727963489 ,
#         role: "Seller",
#         profile_url: "https://th.bing.com/th/id/OIP.jryuUgIHWL-1FVD2ww8oWgHaHa?pid=ImgDet&rs=1",
#         password_digest: "afsdvs",
#         confirm_password: "afsdvs"
#     },

#     {
#         username: "Jonathan Aick",
#         email: "nathan@gmail.com",
#         phone_no:0727123489 ,
#         role: "Buyer",
#         profile_url: "https://th.bing.com/th/id/R.5d2640166fb9248ee7ae20cbc19a9141?rik=QcfC8%2ft8rnv%2foQ&pid=ImgRaw&r=0",
#         password_digest: "sagfhdj",
#         confirm_password: "sagfhdj"
#     },

#     {
#         username: "Ntalami Vick",
#         email: "vicky@gmail.com",
#         phone_no:0787492639 ,
#         role: "Buyer",
#         profile_url: "https://th.bing.com/th/id/OIP.PztowP3ljup0SM75tkDimQHaHa?pid=ImgDet&rs=1",
#         password_digest: "sshsaajh",
#         confirm_password: "sshsaajh"
#     },

#     {
#         username: "Geoffrey Dahmer",
#         email: "dams@gmail.com",
#         phone_no:0768481874,
#         role: "Buyer",
#         profile_url: "https://th.bing.com/th/id/R.139ba3f17d2966ca1fcfbfe34491d3d6?rik=bgSItoyASVfBIg&riu=http%3a%2f%2fimages.statusfacebook.com%2fprofile_pictures%2fstylish-girls%2fstylish-girls-profile-pictures-06.jpg&ehk=kWv6V6UoRzOKd6EZhppwqyTtbYvzCiWpUxEHHjwKtiY%3d&risl=&pid=ImgRaw&r=0",
#         password_digest: "jdnfdjd",
#         confirm_password: "jdnfdjd"
#     },
      

# ])
# puts "delete users"

# User.destroy_all

# puts "done deleting"


# Category.create([{
#     category_name: 'Desktops'
# },
# {
#     category_name: 'Monitors'
# },
# {
#     category_name: 'Laptops'
# },
# {
#     category_name: 'All-in-ones'
# },
# {
#     category_name: 'Tv'
# },
# {
#     category_name: 'Phones'
# },
# {
#     category_name: 'Tablets'
# },
# {
#     category_name: 'Headsets'
# },
# {
#     category_name: 'Data Storage'
# },
# {
#     category_name: 'Accessories'
# }
# ])

# 10.times do
#     wishlists = Wishlist.create!(
#     user_id: rand(1..10),
#     product_id: rand(1..10)
# )
# end

# # puts 'Starting seeding'


# 10.times do
#     payment = ['Cash on Delivery', 'M-pesa', 'Debit/Credit Card']
#     payment_status = ['pending','paid']
#     payment = Payment.create!(
#         order_item_id: rand(1..5),
#         amount: rand(500..5000),
#         payment_method: (payment.sample),
#         status: (payment_status.sample),
#         user_id: rand(1..10)
#     )
# end

# puts 'Done seeding'

# Product.create( [
#   {
#     name: "Iphone 14",
#     price: 148000,
#     description: "A powerful smartphone with a 6.1-inch (155 mm) display with Super Retina XDR OLED technology at a resolution of 2532 × 1170 pixels and a pixel density of about 460 PPI with a refresh rate of 60 Hz.",
#     brand: "Apple",
#     stock_quantity: rand(1..10),
#     category_id: rand(1..10),
#     image_url_1: "https://i.pinimg.com/236x/26/be/56/26be56634ad9773c9d8f6315cac2cba7.jpg",
#     image_url_2: "https://i.pinimg.com/236x/bf/ec/f2/bfecf2b0a771b425f056381be43e084c.jpg",
#     image_url_3: "https://i.pinimg.com/236x/f1/4b/76/f14b76e9c2da3e5744d8a3833e31d879.jpg"
#   },
#   {
#     name: "MacBook pro",
#     price: 210000,
#     description: "A sleek macOS laptop with a 13.30-inch display that has a resolution of 2560x1600 pixels.  It is powered by a Core i5 processor and it comes with 12GB of RAM. The Apple MacBook Pro packs 512GB of SSD storage. .",
#     brand: "Apple",
#     stock_quantity: rand(1..30),
#     category_id: rand(1..10),
#     image_url_1: "https://i.pinimg.com/236x/ba/fe/23/bafe23ae31ee08316ef4f5964f40a05d.jpg",
#     image_url_2: "https://i.pinimg.com/236x/12/3e/f6/123ef687e4fa6f6c9fe9c22df36045fc.jpg",
#     image_url_3: "https://i.pinimg.com/736x/b3/31/aa/b331aac223ad539aad9131e15090bd8d.jpg"
#   },
#   {
#     name: "Baets Pro",
#     price: 5000,
#     description: "Even frequency response of studio monitors for ultra-accurate recording, mixing, and playback. Greater earcup foam density and precise fitting shut out external noise for awesome accuracy and clarity. Plug your cable into one earcup and the other port switches to output mode, making it easy to share what you’re listening to.",
#     brand: "Beats",
#     stock_quantity: rand(1..45),
#     category_id: rand(1..10),
#     image_url_1: "https://i.pinimg.com/236x/4e/6b/63/4e6b639e9a0e0708ad257b43bf9dd50c.jpg",
#     image_url_2: "https://i.pinimg.com/236x/84/08/aa/8408aa296d3919f499771393053d0151.jpg",
#     image_url_3: "https://i.pinimg.com/236x/0b/29/8c/0b298c76ba2ec3dfbfbd8130669d6a75.jpg"
#   },
#   {
#     name: "HP EliteBook",
#     price: 48000,
#     description: "HP EliteBook: High-performance, premium business laptop with sleek design, cutting-edge security features, and long-lasting battery life for professionals on-the-go.",
#     brand: "HP",
#     stock_quantity: rand(1..45),
#     category_id: rand(1..10),
#     image_url_1: "https://i.pinimg.com/236x/7d/3b/39/7d3b395b8b2a243a7abca72ccd413ac0.jpg",
#     image_url_2: "https://i.pinimg.com/236x/64/8f/da/648fdad0d68279bbd99362490e6f52df.jpg",
#     image_url_3: "https://i.pinimg.com/236x/b3/00/c3/b300c36fc5cea150268740c895a061b7.jpg"
#   },
#   {
#     name: "AirPods Max",
#     price: 80,
#     description: "Wireless over-ear headphones by Apple with premium sound, active noise cancellation, spatial audio, Siri integration, and luxurious design.",
#     brand: "Apple",
#     stock_quantity: rand(1..45),
#     category_id: rand(1..10),
#     image_url_1: "https://i.pinimg.com/236x/99/d9/10/99d91067cd1e7537f99f7f038c83c725.jpg",
#     image_url_2: "https://i.pinimg.com/236x/fc/bf/8d/fcbf8d9e2679e73731b66ef40b39b216.jpg",
#     image_url_3: "https://i.pinimg.com/236x/06/9a/57/069a57bf897346df925e92cf50bd2c72.jpg"
#   },
#   {
#     name: "AirPods pro 3",
#     price: 80,
#     description: "Wireless earbuds with active noise cancellation, improved sound, water resistance, touch controls, and enhanced comfort for all-day use.",
#     brand: "Apple",
#     stock_quantity: rand(1..65),
#     category_id: rand(1..10),
#     image_url_1: "https://i.pinimg.com/236x/e3/49/76/e34976e9cd96ce7f6b081a432742a6f7.jpg",
#     image_url_2: "https://i.pinimg.com/236x/32/8c/e9/328ce9ba49eb3141992bc0ddffe0fee9.jpg",
#     image_url_3: "https://i.pinimg.com/236x/c9/90/40/c99040c1ce90c6becbce02e92689bbe8.jpg"
#   },
#   {
#     name: "Custom Gaming CPU",
#     price: 80,
#     description: "ESGaming's custom Gaming CPU boasts a powerful Intel Core i9 processor with 8 cores and 16 threads, overclockable up to 5.0GHz. Equipped with 32GB of high-speed DDR4 RAM, an NVIDIA GeForce RTX 3080 GPU with 10GB VRAM, and a lightning-fast 1TB NVMe SSD, ensuring an immersive and smooth gaming experience.",
#     brand: "ESGaming",
#     stock_quantity: rand(1..65),
#     category_id: rand(1..10),
#     image_url_1: "https://i.pinimg.com/236x/df/04/a4/df04a4f01cf282fc8d0a32f73262c1ca.jpg",
#     image_url_2: "https://i.pinimg.com/236x/5d/2c/42/5d2c4291216594ebded53dbdd5d32e8a.jpg",
#     image_url_3: "https://i.pinimg.com/564x/b7/a2/96/b7a296555b2727dd7b34276c4bf9672e.jpg"
#   },
#   {
#     name: "Tecno Camon 20",
#     price: 80,
#     description: "The Camon 20 by Tecno boasts a powerful quad-camera setup, delivering stunning photography capabilities. Its large display offers an immersive viewing experience, and the generous battery ensures long-lasting usage. With impressive performance and ample storage, it provides a feature-rich smartphone experience.",
#     brand: "Tecno",
#     stock_quantity: rand(1..50),
#     category_id: rand(1..10),
#     image_url_1: "https://i.pinimg.com/236x/a8/a9/94/a8a994b78ec091ecc9590043c65d913e.jpg",
#     image_url_2: "https://i.pinimg.com/236x/d9/aa/84/d9aa84f629406a42aeefa36b8c458716.jpg",
#     image_url_3: "https://i.pinimg.com/236x/40/0a/2b/400a2b355ab51588e574feba5681c6aa.jpg"
#   },
#   {
#     name: "Magic Mouse",
#     price: 80,
#     description: "The Apple Magic Mouse is a wireless, multi-touch mouse designed for Mac computers. It features a sleek, seamless design with a touch-sensitive surface, allowing users to perform gestures for easy navigation and scrolling. Its rechargeable battery and Bluetooth connectivity enhance its usability and convenience.",
#     brand: "Apple",
#     stock_quantity: rand(1..65),
#     category_id: rand(1..10),
#     image_url_1: "https://i.pinimg.com/564x/3f/1e/ef/3f1eef8f82d8b3fc6c2e426a3e29f332.jpg",
#     image_url_2: "https://i.pinimg.com/736x/60/96/46/609646da22b13e7577c5321b2a07765d.jpg",
#     image_url_3: "https://i.pinimg.com/236x/c2/ca/6b/c2ca6bf3506dc8201f9adfbccf158e95.jpg"
#   },
#   {
#     name: "Ipad air",
#     price: 80,
#     description: "The iPad Air by Apple boasts a sleek and lightweight design, featuring a stunning 10.9-inch Liquid Retina display with True Tone and P3 wide color support. Powered by the A14 Bionic chip, it offers impressive performance and supports Apple Pencil, Touch ID, and a 12MP rear camera for versatile usability..",
#     brand: "Apple",
#     stock_quantity: rand(1..65),
#     category_id: rand(1..10),
#     image_url_1: "https://i.pinimg.com/236x/83/da/0d/83da0d55a05d3775d2c9b7fe73b7f756.jpg",
#     image_url_2: "https://i.pinimg.com/236x/ed/e4/cb/ede4cb6bcd5351c69ff75f2c86d33eec.jpg",
#     image_url_3: "https://i.pinimg.com/236x/6a/2f/02/6a2f02d1babbba181f62afe69639e940.jpg"
#   }

#   # Add more products here...
# ]
#  )


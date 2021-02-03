# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning database"
Product.destroy_all

puts "Creating 8 fake products"

file1 = URI.open("https://res.cloudinary.com/lauravannieuwland/image/upload/v1612106112/DestroyBoxing/trainingspak_blj3k4.jpg")
product1  = Product.create(title: "Product 1", description: "Box handschoenen", price: 50, user_id: 1)
product1.image.attach(io:file1, filename:"trainingspak.png", content_type: 'image/png')

file2 = URI.open("https://res.cloudinary.com/lauravannieuwland/image/upload/v1612106112/DestroyBoxing/bokshandschoenen_hz1ihe.jpg")
product2  = Product.create(title: "Product 2", description: "Trainingsbroek", price: 20, user_id: 1)
product2.image.attach(io:file2, filename:"bokshandschoenen.png", content_type: 'image/png')

file3 = URI.open("https://res.cloudinary.com/lauravannieuwland/image/upload/v1598021810/bnqbcj0ccy1g3mld7t8m1bvvewqd.jpg")
product3  = Product.create(title: "Product 2", description: "Trainingsbroek", price: 20, user_id: 1)
product3.image.attach(io:file3, filename:"jamsession4.png", content_type: 'image/png')

file4 = URI.open("https://res.cloudinary.com/lauravannieuwland/image/upload/v1612106108/DestroyBoxing/boxhandschoenen_l7vbqd.jpg")
product4  = Product.create(title: "Product 2", description: "Trainingsbroek", price: 20, user_id: 1)
product4.image.attach(io:file4, filename:"bokshandschoenen_meisje.png", content_type: 'image/png')

file5 = URI.open("https://res.cloudinary.com/lauravannieuwland/image/upload/v1612106108/DestroyBoxing/trainingsbroek_nadcet.jpg")
product5  = Product.create(title: "Product 2", description: "Trainingsbroek", price: 20, user_id: 1)
product5.image.attach(io:file5, filename:"trainingsbroek.png", content_type: 'image/png')

file6 = URI.open("https://res.cloudinary.com/lauravannieuwland/image/upload/v1598021810/bnqbcj0ccy1g3mld7t8m1bvvewqd.jpg")
product6  = Product.create(title: "Product 2", description: "Trainingsbroek", price: 20, user_id: 1)
product6.image.attach(io:file6, filename:"jamsession4.png", content_type: 'image/png')

file7 = URI.open("https://res.cloudinary.com/lauravannieuwland/image/upload/v1598021810/bnqbcj0ccy1g3mld7t8m1bvvewqd.jpg")
product7  = Product.create(title: "Product 2", description: "Trainingsbroek", price: 20, user_id: 1)
product7.image.attach(io:file7, filename:"jamsession4.png", content_type: 'image/png')

file8 = URI.open("https://res.cloudinary.com/lauravannieuwland/image/upload/v1598021810/bnqbcj0ccy1g3mld7t8m1bvvewqd.jpg")
product8  = Product.create(title: "Product 2", description: "Trainingsbroek", price: 20, user_id: 1)
product8.image.attach(io:file8, filename:"jamsession4.png", content_type: 'image/png')

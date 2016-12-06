# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: 'Christmas Ball', price: 15, picture_url: '#', comments: "Clear 4' balls with many designs available including custom", christmas: true, clothing: false)
Product.create(name: 'Christmas Bag', price: 12, picture_url: '#', comments: "A bag for christmas presents with a custom name printed on front", christmas: true, clothing: false)
Product.create(name: 'Watching The Game Socks', price: 10, picture_url: '#', comments: "A warm pair of socks printed with your favorite team", christmas: false, clothing: true)
Product.create(name: 'Signs', price: 30, picture_url: '#', comments: "Custom printed signs available in different materials", christmas: false, clothing: false)
Product.create(name: 'Christmas Tree Skirt', price: 20, picture_url: '#', comments: "Christmas tree skirt printed with your family name", christmas: true, clothing: false)
Product.create(name: 'Coasters', price: 10, picture_url: '#', comments: "Custom printed coasters available", christmas: false, clothing: false)
Product.create(name: 'Baby Jumpers', price: 10, picture_url: '#', comments: "Custom printed baby jumpers in different sizes", christmas: false, clothing: true)
Product.create(name: 'Mugs', price: 10, picture_url: '#', comments: "Custom printed mugs", christmas: false, clothing: false)
Product.create(name: 'Shirts', price: 10, picture_url: '#', comments: "Custom shirts in different sizes", christmas: false, clothing: true)
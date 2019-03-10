# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "RoR course", unit: 'day', unit_price: 12.50, type: "Subscription")
Product.create(name: "DevOps course", unit: 'day', unit_price: 10.00, type: "Subscription")
Product.create(name: "ReactJS course", unit: 'day', unit_price: 8.00, type: "Subscription")

Product.create(name: "RoR tricks", unit: 'hour', unit_price: 2.50, type: "Service")
Product.create(name: "DevOps for AWS", unit: 'hour', unit_price: 5.99, type: "Service")
Product.create(name: "Redux approach", unit: 'hour', unit_price: 4.75, type: "Service")

Product.create(name: "RoR by MIT", unit_price: 8.99, type: "Good")
Product.create(name: "ReactJS by MIT", unit_price: 5.99, type: "Good")
Product.create(name: "Robotics by MIT", unit_price: 19.99, type: "Good")



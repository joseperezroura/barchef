# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email:"johnny@boy.com", password: "blahblah", password_confirmation: "blahblah", first_name: "Johnny", last_name: "Boy", bio: "Chef in training.", industry: "Restaurant", location: "New York, NY")
User.create!(email:"juan@juan.com", password: "whatever", password_confirmation: "whatever", first_name: "Juan", last_name: "Perez", bio: "Bartender", industry: "Bar", location: "Miami Beach, FL")
User.create!(email:"james@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "James", last_name: "Franco", bio: "", industry: "Bar", location: "Los Angeles, CA")
User.create!(email:"peyton@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "Peyton", last_name: "Manning", bio: "Pastry Chef", industry: "Hotel", location: "Denver, CO")
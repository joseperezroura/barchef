# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

johnny = User.create!(email:"johnny@boy.com", password: "blahblah", password_confirmation: "blahblah", first_name: "Johnny", last_name: "Boy", bio: "Chef in training.", industry: "Restaurant", location: "New York, NY")
juan = User.create!(email:"juan@juan.com", password: "whatever", password_confirmation: "whatever", first_name: "Juan", last_name: "Perez", bio: "Bartender", industry: "Bar", location: "Miami Beach, FL")
james = User.create!(email:"james@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "James", last_name: "Franco", bio: "Bartender in training at Broken Shaker. Living like its my last day brah...", industry: "Bar", location: "Los Angeles, CA")
peyton = User.create!(email:"peyton@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "Peyton", last_name: "Manning", bio: "Pastry Chef", industry: "Hotel", location: "Denver, CO")
molly = User.create!(email:"molly@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "Molly", last_name: "Smith", bio: "Cocktail Server at your mom's house.", industry: "Bar", location: "SanDiego, CA")
eli = User.create!(email:"eli@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "Eli", last_name: "Manning", bio: "Bartender for the New York Football Giants.", industry: "Hotel", location: "New York,NY")

johnny.recipes.create!(name:"blah", description:"blah served with ice", instructions:"lorem ipsum you are a bad mofo and I am the best.")
johnny.recipes.create!(name:"foobarmagic", description:"ingredient1:blaaaaaaaaaaaah", instructions:"blah bald nooooooo hijo de la chingada")

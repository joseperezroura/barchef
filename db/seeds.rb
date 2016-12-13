# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

johnny = User.create!(email:"johnny@boy.com", password: "blahblah", password_confirmation: "blahblah", first_name: "Johnny", last_name: "Boy", bio: "Bartender", industry: "27 Restaurant", location: "Miami Beach, FL")
juan = User.create!(email:"juan@juan.com", password: "whatever", password_confirmation: "whatever", first_name: "Juan", last_name: "Perez", bio: "Bartender", industry: "Bar", location: "Miami Beach, FL")
james = User.create!(email:"james@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "James", last_name: "Franco", bio: "Bartender in training at Broken Shaker. Living like its my last day brah...", industry: "Bar", location: "Los Angeles, CA")
peyton = User.create!(email:"peyton@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "Peyton", last_name: "Manning", bio: "Pastry Chef", industry: "Hotel", location: "Denver, CO")
molly = User.create!(email:"molly@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "Molly", last_name: "Smith", bio: "Cocktail Server at your mom's house.", industry: "Bar", location: "SanDiego, CA")
eli = User.create!(email:"eli@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "Eli", last_name: "Manning", bio: "Bartender for the New York Football Giants.", industry: "Hotel", location: "New York,NY")

johnny.recipes.create!(name:"Old Fashioned", description:"2oz Bourbon Whiskey, barspoon of Simple Syrup and Bitters.", instructions:"Put all the ingredients in a mixing glass, add ice and stir for 40 seconds.  Serve over ice with a orange peel.")
johnny.recipes.create!(name:"Rucker Park", description:"1oz Rye Whiskey, 1oz Cherry Heering, 1oz Lemon Juice and .25oz of honey.", instructions:"Shake all the ingredients with ice.  Strain into a rocks glass filled with ice.  Garnish with a cherry.")

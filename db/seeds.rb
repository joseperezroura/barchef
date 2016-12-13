# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

johnny = User.create!(email:"johnny@johnny.com", password: "whatever", password_confirmation: "whatever", first_name: "Johnny", last_name: "Utah", bio: "Bartender", industry: "27 Restaurant", location: "Miami Beach, FL")
jose = User.create!(email:"jose@jose.com", password: "whatever", password_confirmation: "whatever", first_name: "Jose", last_name: "Perez-Roura", bio: "Former Bartender", industry: "Over-Under", location: "Miami, FL")
james = User.create!(email:"james@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "James", last_name: "Franco", bio: "Bartender in training at Broken Shaker. Living like its my last day brah...", industry: "Bar", location: "Los Angeles, CA")
peyton = User.create!(email:"peyton@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "Peyton", last_name: "Sturgis", bio: "Pastry Chef", industry: "Hotel", location: "Denver, CO")
molly = User.create!(email:"molly@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "Molly", last_name: "Smith", bio: "Pastry Chef", industry: "Restaurant", location: "SanDiego, CA")
eli = User.create!(email:"eli@gmail.com", password: "whatever", password_confirmation: "whatever", first_name: "Eli", last_name: "Mann", bio: "Bartender for the New York Football Giants.", industry: "Hotel", location: "New York,NY")

johnny.recipes.create!(name:"Old Fashioned", description:"2oz Bourbon Whiskey, barspoon of Simple Syrup and Bitters.", instructions:"Put all the ingredients in a mixing glass, add ice and stir for 40 seconds.  Serve over ice with a orange peel.")
johnny.recipes.create!(name:"Rucker Park", description:"1oz Rye Whiskey, 1oz Cherry Heering, 1oz Lemon Juice and .25oz of honey.", instructions:"Shake all the ingredients with ice.  Strain into a rocks glass filled with ice.  Garnish with a cherry.")

jose.recipes.create!(name:"Juan's Coconut Mojito", description:"2oz Coconut-infused Havana Club Rum, barspoon of Simple Syrup, Bitters, club soda.", instructions:"Shake all the ingredients in a tin minus the club soda. Serve over ice in a collins glass. Top off with club soda.  Garnish with lime wedge.")
jose.recipes.create!(name:"Saucy Calypso", description:"1.75oz Solbeso Liquer, .25oz  Dark Rum, barspoon of Coconut Milk.", instructions:"Shake all the ingredients in a tin with ice. Double strain into a coupe. Garnish with a flower (optional).")

molly.recipes.create!(name:"Molly's Apple Pie", description:"Use washington red apples, brown sugar, cinnamon crust.", instructions:"Bake all the ingredients at 350 degrees.")
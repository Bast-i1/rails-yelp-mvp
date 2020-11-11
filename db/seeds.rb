# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
chinese = { name: "Royale China", address: "7 Boundary St, London E2 7JE", category: "chinese" }
italian =  { name: "Good Italia", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
japanese = { name: "Powerful Japan", address: "12 Carnely St, London E2 7JE", category: "japanese" }
french =  { name: "Romantic France", address: "32 hygway St, London E1 6PQ", category: "french" }
belgian = { name: "Beautiful Belgium", address: "8 liberty boulevard, London E2 7JE", category: "belgian" }
american = { name: "Great America", address: "14 since st, London E2 7JE", category: "american" }
indian = { name: "Color Of India", address: "9 hig-boulevard, London E1 4JE", category: "india" }

[chinese, italian, japanese, french, belgian].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

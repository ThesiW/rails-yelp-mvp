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
agrikultur = { name: 'Agrikultur', address: 'Stockholm', category: 'belgian' }
riche = { name: 'Riche', address: 'Paris', category: 'french' }
ai_ramen = { name: 'Ai Ramen', address: 'Berlin', category: 'japanese' }
barra = { name: 'Barra', address: 'Rome', category: 'italian' }
petrus = { name: 'Petrus', address: 'Shanghai', category: 'chinese' }

[ agrikultur, riche, ai_ramen, barra, petrus ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

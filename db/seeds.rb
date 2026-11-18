# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

restaurants = [
  {
    name: "Le Petit Bistrot",
    address: "12 rue de la Paix, 75002 Paris",
    phone_number: "01 42 60 12 34",
    category: "french"
  },
  {
    name: "Trattoria Bella Napoli",
    address: "8 rue des Martyrs, 75009 Paris",
    phone_number: "01 45 26 78 90",
    category: "italian"
  },
  {
    name: "Sakura Sushi",
    address: "25 rue Sainte-Anne, 75001 Paris",
    phone_number: "01 47 03 45 67",
    category: "japanese"
  },
  {
    name: "Pékin Express",
    address: "40 avenue d'Ivry, 75013 Paris",
    phone_number: "01 45 83 21 09",
    category: "chinese"
  },
  {
    name: "Chez Antoine",
    address: "3 place du Marché, 44000 Nantes",
    phone_number: "02 40 12 34 56",
    category: "belgian"
  }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
end

puts "Finished!"

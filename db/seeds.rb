# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all
puts "Flat destroyed..."

Flat.create!(
  name: 'Little Budapest Hotel',
  address: 'Budapest lol',
  description: 'A small hotel in Budapest',
  price_per_night: 1000,
  number_of_guests: 1
)

Flat.create!(
  name: 'Grand Budapest Hotel',
  address: 'Budapest lol',
  description: 'A grand hotel in Budapest',
  price_per_night: 1_000_000_000,
  number_of_guests: 2
)

Flat.create!(
  name: 'Medium Budapest Hotel',
  address: 'Budapest lol',
  description: 'A medium hotel in Budapest',
  price_per_night: 1_000_000,
  number_of_guests: 3
)

Flat.create!(
  name: 'Some Hotel',
  address: 'Some',
  description: 'Somewere in some',
  price_per_night: 23,
  number_of_guests: 2
)

Flat.create!(
  name: 'Simple Hotel',
  address: 'Simple city',
  description: 'Somewere in simple city',
  price_per_night: 121,
  number_of_guests: 4
)

puts "#{Flat.count} flats created"

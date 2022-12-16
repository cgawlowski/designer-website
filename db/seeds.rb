# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Picture.destroy_all

puts "Creating pictures..."
10.times do
  Picture.create(
    name: Faker::Games::Pokemon.name,
    description: Faker::Games::Pokemon.move,
    category: Faker::Book.title ,
    price: rand(15..150),
    is_home_item: false,
    is_portfolio_item: true,
    is_sketchbook_item: false,
    is_shopping_item: false,
  )
end

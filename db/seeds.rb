# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Ginger")
Ingredient.create(name: "Jack Daniels")
puts "finished"

puts 'Creating cocktails...'
cocktails_attributes = [
  {
    name:         'Long Island Iced tea',
  },
  {
    name:         'Sex on the Beach',
  },
  {
    name:         'Martini: shaken not stirred',
  }
]
Cocktail.create!(cocktails_attributes)
puts 'Finished!'

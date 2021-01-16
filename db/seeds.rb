require 'httparty'

puts "Deleting database..."
Cocktail.destroy_all

puts "Creating cocktails..."

5.times do
  Cocktail.create(
    name: "#{Faker::Beer.name}"
  )
end

puts "Completed!"

puts "Deleting database..."
Cocktail.destroy_all

puts "Creating ingredients..."

file = HTTParty.get('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
ingredients_hash = JSON.parse(file.body)

10.times do
  Ingredient.create(
    name: ingredients_thing['drinks'].sample['strIngredient1']
    )
  end

  puts "Done!"

  puts "Deleting database..."
  Cocktail.destroy_all
  
  puts "Creating doses..."
  
  4.times do
    Dose.create(
      description: "#{[rand(2..5)]} parts", cocktail: Cocktail[:id]['#{rand(0..4)}'], ingredients
    )
  end

  puts "Completed!"

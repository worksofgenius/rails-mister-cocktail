require 'httparty'

puts 'Deleting database...'
Cocktail.destroy_all

puts 'Creating cocktails...'

5.times do
  Cocktail.create(
    name: "#{Faker::Beer.name}"
  )
end

puts 'Completed!'

file = HTTParty.get('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
ingredient_hash = JSON.parse(file.body)

puts 'Deleting database...'
Ingredient.destroy_all

puts 'Creating ingredients...'

100.times do
  Ingredient.create(
    name: ingredient_hash['drinks'].sample['strIngredient1']
  )
end

puts 'Done!'

puts 'Deleting database...'

Dose.destroy_all

puts 'Creating doses...'

20.times do
  Dose.create(
    description: "#{[rand(1..5)]} part(s)"
  )
end

puts 'Completed!'

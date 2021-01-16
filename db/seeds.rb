puts "Deleting database..."
Cocktail.destroy_all

puts "Creating cocktails..."

5.times do
  Cocktail.create(
    name: "#{Faker::Beer.name}"
  )
end

puts "Completed!"
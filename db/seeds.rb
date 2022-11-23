puts "Nettoyons la DB..."

Restaurant.destroy_all

puts "Créons des restaurants.."

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Beer.name,
    address: Faker::Address.state,
    phone_number: Faker::Config.locale,
    category: %w[chinese italian japanese french belgian].sample
  )
    puts "Restaurant #{restaurant.id} a été créé"
end

puts "Tout fini!"

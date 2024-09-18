# db/seeds.rb

puts "🌱 Seeding data..."

# Creating castles
castle_names = [
  { name: "Winterfell", location: "The North" },
  { name: "Dragonstone", location: "The Narrow Sea" },
  { name: "Castle Black", location: "The Wall" }
]

castle_names.each do |castle_data|
  castle = Castle.create(castle_data)
  puts "🏰 Created Castle: #{castle.name} in #{castle.location}"
end
# Creating multiple dragons per castle
dragons_data = {
  "Winterfell" => [
    { name: "Rhaegal", colour: "Green" },
    { name: "Smokey", colour: "Grey" }
  ],
  "Dragonstone" => [
    { name: "Drogon", colour: "Black" },
    { name: "Balerion", colour: "Charcoal" },
    { name: "Syrax", colour: "Golden" }
  ],
  "Castle Black" => [
    { name: "Viserion", colour: "White" },
    { name: "Frostfang", colour: "Blue" }
  ]
}

dragons_data.each do |castle_name, dragons|
  castle = Castle.find_by(name: castle_name)
  dragons.each do |dragon_info|
    dragon = Dragon.create(name: dragon_info[:name], colour: dragon_info[:colour], castle_id: castle.id)
    puts "🐉 Created Dragon: #{dragon.name} (#{dragon.colour}) in Castle: #{castle.name}"
  end
end
puts "Created #{Castle.count} castles, and #{Dragon.count} dragons"

puts "✅ Seeding completed!"

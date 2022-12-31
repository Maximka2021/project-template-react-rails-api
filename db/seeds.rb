# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
puts "sui"

10.times{
    User.create!(
        username: Faker::App.name,
        password: "123",
        email: Faker::Internet.email,
        wallet: rand(5..15)
    )
}


50.times{
    Game.create!(
        title: Faker::Game.title, 
        genre: Faker::Game.genre,
        price: rand(20..60).round(2),
        platform: Faker::Game.platform
    )
}

40.times{
    Purchase.create!(
        user_id: rand(1..10),
        game_id: rand(1..50)
    )
}

puts "suiiiiiii"
    

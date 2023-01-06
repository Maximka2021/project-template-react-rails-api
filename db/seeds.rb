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

Game.create!(title: 'Minecraft', genre: 'Sandbox', price: 0, platform: 'All', img_url: 'https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png')
Game.create!(title: 'Grand Theft Auto V', genre: 'Open-World', price: 20, platform: 'All', img_url: 'https://cdn.cloudflare.steamstatic.com/steam/apps/271590/capsule_616x353.jpg?t=1671485100')
Game.create!(title: 'Resident Evil 4', genre: 'Horror', price: 60, platform: 'Nintendo', img_url: 'https://www.residentevil.com/re4/assets/images/common/share-re.png')
Game.create!(title: 'Dance Dance Revolution II', genre: 'Music', price: 74, platform: 'Nintendo', img_url: 'https://m.media-amazon.com/images/I/71taX4RpmLL.jpg' )
Game.create!(title: 'The Legend of Zelda: Breath of the Wild', genre: 'Action-adventure', price: 60, platform: 'Nintendo', img_url: 'https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/en_US/games/switch/t/the-legend-of-zelda-breath-of-the-wild-switch/hero')
Game.create!(title: 'Red Dead Redemption 2', genre: 'Action-adventure', price: 60, platform: 'All', img_url: 'https://image.api.playstation.com/cdn/UP1004/CUSA03041_00/Hpl5MtwQgOVF9vJqlfui6SDB5Jl4oBSq.png')
Game.create!(title: 'Half-Life 2', genre: 'Action-adventure', price: 40, platform: 'All', img_url: 'https://upload.wikimedia.org/wikipedia/en/2/25/Half-Life_2_cover.jpg' )
Game.create!(title: 'Halo: Combat Evolved Anniversary', genre: 'First-person shooter', price: 20, platform: 'XBox', img_url: 'https://upload.wikimedia.org/wikipedia/en/9/9c/HaloCEA_boxart.png')
Game.create!(title: 'The Last of Us', genre: 'Survival horror', price: 20, platform: 'Sony', img_url: 'https://upload.wikimedia.org/wikipedia/en/4/46/Video_Game_Cover_-_The_Last_of_Us.jpg')
Game.create!(title: 'Super Mario 64', genre: 'Adventure', price: 20, platform: 'Nintendo', img_url: 'https://upload.wikimedia.org/wikipedia/en/6/6a/Super_Mario_64_box_cover.jpg')
Game.create!(title: 'Call of Duty 4: Modern Warfare', genre: 'First-person shooter', price: 40, platform: 'All', img_url: 'https://upload.wikimedia.org/wikipedia/en/5/5f/Call_of_Duty_4_Modern_Warfare.jpg' )
Game.create!(title: 'The Witcher 3: Wild Hunt', genre: 'Action-adventure', price: 10, platform: 'Sony', img_url: 'https://image.api.playstation.com/vulcan/ap/rnd/202211/0711/kh4MUIuMmHlktOHar3lVl6rY.png')
Game.create!(title: 'Uncharted 2: Among Thieves', genre: 'Action-adventure', price: 30, platform: 'Sony', img_url: 'https://store.playstation.com/store/api/chihiro/00_09_000/container/US/en/99/UP9000-BCUS98123_00-U2COLLECTIONBUND/0/image?_version=00_09_000&platform=chihiro&bg_color=000000&opacity=100&w=720&h=720')
Game.create!(title: 'Batman: Arkham City', genre: 'Action-adventure', price: 30, platform: 'All', img_url: 'https://upload.wikimedia.org/wikipedia/en/0/00/Batman_Arkham_City_Game_Cover.jpg')
Game.create!(title: 'Overwatch', genre: 'First-person shooter', price: 15, platform: 'All', img_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Overwatch_cover_art.jpg/220px-Overwatch_cover_art.jpg')
Game.create!(title: 'League of Legends', genre: 'Action role-playing', price: 0, platform: 'PC', img_url: 'https://cdn1.epicgames.com/salesEvent/salesEvent/EGS_LeagueofLegends_RiotGames_S1_2560x1440-ee500721c06da3ec1e5535a88588c77f')
Game.create!(title: 'God of War Ragnarök', genre: 'Action-adventure', price: 60, platform: 'Sony', img_url: 'https://image.api.playstation.com/vulcan/ap/rnd/202207/1210/4xJ8XB3bi888QTLZYdl7Oi0s.png')
Game.create!(title: 'Horizon Forbidden West', genre: 'Adventure', price: 60, platform: 'Sony', img_url: 'https://image.api.playstation.com/vulcan/ap/rnd/202107/3100/HO8vkO9pfXhwbHi5WHECQJdN.png')
Game.create!(title: 'Pokémon Legends: Arceus', genre: 'Adventure', price: 60, platform: 'Nintendo', img_url: 'https://assets-prd.ignimgs.com/2021/11/04/pokmon-legends-arceus-button-fomn-1636006738698.jpg')
Game.create!(title: 'Gran Turismo 7', genre: 'Car racing', price: 60, platform: 'Sony', img_url: 'https://image.api.playstation.com/vulcan/ap/rnd/202109/1321/yZ7dpmjtHr1olhutHT57IFRh.png')
Game.create!(title: 'Kingdom Hearts III', genre: 'Adventure', price: 15, platform: 'All', img_url: 'https://image.api.playstation.com/cdn/EP0082/CUSA12025_00/OHNJ80jcQ8TDIAK7KmNQdzXswaXoxAH0.png')
Game.create!(title: 'Fortnite', genre: 'Battle royale', price: 0, platform: 'All', img_url: 'https://assets1.ignimgs.com/2018/03/06/fortnite---button-1520296499714.jpg')
Game.create!(title: 'Fifa 23', genre: 'Sports', price: 60, platform: 'All', img_url: 'https://image.api.playstation.com/vulcan/ap/rnd/202211/0321/GTfjX9RaN2y66lA22bkthbJ8.png')
Game.create!(title: 'Madden NFL 23', genre: 'Sports', price: 60, platform: 'All', img_url: 'https://m.media-amazon.com/images/I/81PDqPK7H5L.jpg')
Game.create!(title: 'NBA 2K23', genre: 'Sports', price: 60, platform: 'All', img_url: 'https://assets.2k.com/1a6ngf98576c/2RNTmC7iLr6YVlxBSmE4M3/11177cffa2bdbedb226b089c4108726a/NBA23-WEBSITE-PRE_ORDER-HOMPAGE-MODULE2-RETAIL_CAROUSEL-CROSSGEN_EDITION-425x535.jpg')
Game.create!(title: 'Star Wars Jedi: Fallen Order', genre: 'Action-adventure', price: 30, platform: 'All', img_url: 'https://static.wikia.nocookie.net/starwars/images/5/57/Fallen-Order-Box-Art.jpg/revision/latest?cb=20190607015712')
Game.create!(title: 'Fallout 4', genre: 'Open-World', price: 20, platform: 'All', img_url: 'https://image.api.playstation.com/vulcan/ap/rnd/202009/2500/4GZyUQ1bHTjICP6GCRG7f65n.png')
Game.create!(title: 'Immortality', genre: 'Adventure', price: 20, platform: 'Xbox', img_url: 'https://cdn.cloudflare.steamstatic.com/steam/apps/1350200/capsule_616x353.jpg?t=1669169741')
Game.create!(title: 'Microsoft Flight Simulator', genre: 'Flight', price: 48, platform: 'Xbox', img_url: 'https://cdn.cloudflare.steamstatic.com/steam/apps/1250410/capsule_616x353.jpg?t=1668186331')
Game.create!(title: 'Forza Motorsport 7', genre: 'Car racing', price: 50, platform: 'Xbox', img_url: 'https://www.gamespot.com/a/uploads/scale_medium/1197/11970954/3246467-9a6a7536-5758-4313-bdb4-db6ecc23b3a0.jpg')
Game.create!(title: 'Spider-Man', genre: 'Open-World', price: 40, platform: 'Sony', img_url: 'https://image.api.playstation.com/vulcan/ap/rnd/202011/0402/pZ2pIEEnH7YhEtpxh1CY6KDz.png')
Game.create!(title: 'Marvel\'s Spider-Man: Miles Morales', genre: 'Open-World', price: 60, platform: 'Sony', img_url: 'https://image.api.playstation.com/vulcan/ap/rnd/202008/1020/PRfYtTZQsuj3ALrBXGL8MjAH.jpg')
Game.create!(title: 'Call of Duty: Modern Warfare 2', genre: 'First-person shooter', price: 60, platform: 'All', img_url: 'https://static.wikia.nocookie.net/callofduty/images/2/27/ModernWarfareII_Keyart_MWII.jpg/revision/latest/scale-to-width-down/1200?cb=20220524163844')
Game.create!(title: 'Fall Guys: Ultimate Knockout', genre: 'Battle royale', price: 0, platform: 'All', img_url: 'https://cdn1.epicgames.com/offer/50118b7f954e450f8823df1614b24e80/EGS_FallGuys_Mediatonic_S1_2560x1440-187aa50ffaa014885d6702a0b632f848')
Game.create!(title: 'Demon\'s Souls', genre: 'Adventure', price: 44, platform: 'Sony', img_url: 'https://image.api.playstation.com/vulcan/img/rnd/202011/1717/GemRaOZaCMhGxQ9dRhnQQyT5.png')
Game.create!(title: 'Halo Infinite', genre: 'First-person shooter', price: 60, platform: 'Xbox', img_url: 'https://assets.xboxservices.com/assets/95/eb/95eb973b-006b-4533-8902-f5a3f8dfd955.jpg?n=Halo-Infinite_GLP-Page-Hero-0_1083x609.jpg')
Game.create!(title: 'Gears 5', genre: 'Third-person shooter', price: 20, platform: 'Xbox', img_url: 'https://cdn.cloudflare.steamstatic.com/steam/apps/1097840/capsule_616x353.jpg?t=1667846999')
Game.create!(title: 'Resident Evil Village', genre: 'Survival horror', price: 20, platform: 'All', img_url: 'https://image.api.playstation.com/vulcan/ap/rnd/202101/0812/FkzwjnJknkrFlozkTdeQBMub.png')
Game.create!(title: 'Super Mario 3D World + Bowser\'s Fury', genre: 'Adventure', price: 20, platform: 'Nintendo', img_url: 'https://assets-prd.ignimgs.com/2020/09/04/switch-supermario3dworldbowsersfury-artwork-01-1599185344908.jpg')
Game.create!(title: 'The Forgotten City', genre: 'Adventure', price: 15, platform: 'All', img_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/The_Forgotten_City_-_cover.jpg/220px-The_Forgotten_City_-_cover.jpg')
Game.create!(title: 'Far Cry 6', genre: 'First-person shooter', price: 60, platform: 'All', img_url: 'https://cdn1.epicgames.com/b4565296c22549e4830c13bc7506642d/offer/TETRA_PREORDER_STANDARD%20EDITION_EPIC_Store_Portrait_1200x1600-1200x1600-ca8b802ff13813c37a44ebf68d0946a2.png')

40.times{
    Purchase.create(
        user_id: rand(1..10),
        game_id: rand(1..40)
    )
}


puts "suiiiiiii"
    

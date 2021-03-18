Game.create(name: "Carrier Command", release_year: 1988, developer: "Imagine Software", setting: "Sci-fi")
Game.create(name: "J.R.R. Tolkien's War in Middle-earth", release_year: 1988, developer: "Melbourne House", setting: "Fantasy")
Game.create(name: "Command HQ", release_year: 1991, developer: "Ozark Softscape", setting: "Fantasy")
Game.create(name: "Dune II", release_year: 1992, developer: "Westwood", setting: "Sci-fi")
Game.create(name: "Warcraft: Orcs & Humans", release_year: 1994, developer: "Blizzard", setting: "Fantasy")
Game.create(name: "Command and Conquer", release_year: 1995, developer: "Westwood", setting: "Sci-fi")
Game.create(name: "Warcraft II: Tides of Darkness", release_year: 1995, developer: "Blizzard", setting: "Fantasy")
Game.create(name: "Command & Conquer: Red Alert", release_year: 1996, developer: "Westwood", setting: "Sci-fi")
Game.create(name: "Age of Empires", release_year: 1997, developer: "Ensemble", setting: "Historical")
Game.create(name: "Myth: The Fallen Lords", release_year: 1997, developer: "Bungie", setting: "Fantasy")
Game.create(name: "Total Annihilation", release_year: 1997, developer: "Cavedog", setting: "Sci-fi")
Game.create(name: "StarCraft", release_year: 1998, developer: "Westwood", setting: "Sci-fi")
Game.create(name: "Command and Conquer: Tiberian Sun", release_year: 1998, developer: "Blizzard", setting: "Sci-fi")
Game.create(name: "Anno 1602", release_year: 1998, developer: "Max Design", setting: "Historical")
Game.create(name: "Homeworld", release_year: 1999, developer: "Relic", setting: "Sci-fi")
Game.create(name: "Command & Conquer: Red Alert 2", release_year: 2000, developer: "Westwood", setting: "Sci-fi")
Game.create(name: "Europa Universalis", release_year: 2000, developer: "Paradox Development Studio", setting: "Historical")
Game.create(name: "Star Trek: Armada", release_year: 2000, developer: "Activision", setting: "Historical")
Game.create(name: "Shogun: Total War", release_year: 2000, developer: "The Creative Assembly", setting: "Historical")
Game.create(name: "Pikmin", release_year: 2001, developer: "Nintendo", setting: "Fantasy")
Game.create(name: "Stronghold", release_year: 2001, developer: "Firefly", setting: "Fantasy")
Game.create(name: "Hearts of Iron", release_year: 2001, developer: "Paradox Development Studio", setting: "Historical")
Game.create(name: "Warcraft III: Reign of Chaos", release_year: 2002, developer: "Blizzard", setting: "Fantasy")
Game.create(name: "Medieval: Total War", release_year: 2002, developer: "The Creative Assembly", setting: "Historical")
Game.create(name: "Age of Mythology", release_year: 2002, developer: "Ensemble", setting: "Fantasy")
Game.create(name: "Rise of Nations", release_year: 2003, developer: "Big Huge", setting: "Historical")


User.create(username: "John Wick", password_digest: "1234")
User.create(username: "Frodo Baggins", password_digest: "2345")
User.create(username: "Sandy Cheeks", password_digest: "3456")
User.create(username: "Lola Bunny", password_digest: "4567")
User.create(username: "Tony Stark", password_digest: "5678")
User.create(username: "Peter Parker", password_digest: "6789")

Review.create(title:"A True Masterpiece", star_rating: 5, date: Time.new, content: "Command & Conquer is truly the definition of what a RTS game should be. Not only that, it still is the pinnacle the RTS genre and started one of the greatest series of games in gaming history. I remember getting this game way back in 97 and playing it for hours. Even my dad played a lot too. It took me forever to beat the game because of how much you have to strategize to beat each mission; sending your units at the most opportune time, sending the right units, organizing your units to optimize their potential, all in the midst of fending off the enemy and gaining ground. Most importantly, the story is amazing. Full-motion Videos really set this game off to. I can still vividly remember the briefing for the final GDI mission; the general is distraught, clearly tired, and generally pissed off. It really made the game just that more realistic. Is and always will be one my all-time favorite games EVER!", game_id: 6, user_id: 1)
Review.create(title:"The Game that Keeps on Giving", star_rating: 5, date: Time.new, content: "An outstanding example of what Ensemble Studios had to offer - it's such a shame that they no longer exist! The superb controls and expansive campaigns are only let down a little by the AI, which can be a little stupid at times.", game_id: 9, user_id: 2)
Review.create(title:"It's StarCraft. Need I say more?", star_rating: 5, date: Time.new, content: "This game is never getting old :) Now that SC2 is finally out I put my Starcraft cd-s onto my shelves.. One week before Starcraft 2 Beta I was still playing with the 1st sequel and i have been creating and scripting custom maps for that game for years!! Love the feeling, epic ending, characters, stories, races, music, cutscenes and everything about this game!", game_id: 12, user_id: 3)
Review.create(title:"A Very Decent Star Trek RTS", star_rating: 4, date: Time.new, content: "Most Star Trek games aren't very good, but Star Trek Armada's an exception. It's an impressive real-time strategy game that borrows action and gameplay elements from many of the genre's classics. It lets you do battle with the fleets of four of Star Trek's most popular races, and while it isn't an especially complex game, it still manages to be highly enjoyable even in spite of some technical problems, thanks to its good graphics and gameplay.", game_id: 18, user_id: 4)
Review.create(title:"One of the Better Total War Titles", star_rating: 4, date: Time.new, content: "This is an incredibly fun and high-detailed game that is sure to keep the attention of many! Set in the medieval times (around the founding of the americas), this game is pretty accurate on its history. This game is truly no less that Miraculously fun.", game_id: 24, user_id: 5)
Review.create(title:"The Game that Put Paragon on the Map", star_rating: 5, date: Time.new, content: "For me, this is what started my admiration for Paradox Games. However I would recommend Europa Universalis II over this one. EU2 is very much the same game, but with a lot of improvements.", game_id: 17, user_id: 6)








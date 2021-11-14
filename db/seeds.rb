Actor.destroy_all
Character.destroy_all
Network.destroy_all
Show.destroy_all

puts "seeding actors....."

jon = Actor.create(first_name: "Jon", last_name: "Adams")
laura = Actor.create(first_name: "Laura", last_name: "Nellings")

puts "seeding shows ..."

zooks = Show.create(name: "THE ZOOKS", day: "mwf", season: "5th", genre: "comedy" )
bling = Show.create(name: "Bling Lane", day: "m", season: "2nd", genre: "Scifi")

puts "seeding characters ..."

pug = Character.create(actor_id: jon.id, show_id: zooks.id, name: "Pug man", catchphrase: "WALAROOOOOO!")
lady = Character.create(actor_id: laura.id, show_id: bling.id, name: "Lady Marang", catchphrase: "Well isn't that just tooo darn bad")

puts "seeding networks ..."

winABC = Network.create(call_letters: "a", channel: "ABC")
showtime = Network.create(call_letters: "t", channel: "Showtime")

puts "seeding complete"
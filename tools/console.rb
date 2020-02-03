require_relative '../config/environment.rb'

graham = Artist.new("Graham", 29)
georgia = Artist.new("Georgia O'Keefe", 59)
frida = Artist.new("Frida Kahlo", 30)
jemy = Artist.new("Jemy Chen", 99)

phyllis_kind_gallery = Gallery.new("Phyllis Kind Gallery", "Chicago, IL")
met = Gallery.new("Teh Met", "NYC, NY")

scream = Painting.new("Scream", 87_000, jemy, met)
scream_2 = Painting.new("Scream 2", 187_000, jemy, met)
new_york = Painting.new("New York",1_000_000, graham, met)
starry_night = Painting.new("Starry Night", 7_000, frida, phyllis_kind_gallery)
flower = Painting.new("Flower", 1_000_000, georgia, phyllis_kind_gallery)

binding.pry


#puts "Bob Ross rules."
#p jemy.paintings
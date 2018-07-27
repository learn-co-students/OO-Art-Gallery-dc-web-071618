require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jon = Artist.new("Jon", 36)
kate = Artist.new("Kate", 34)
mattie = Artist.new("Matterhorn", 10)

g1 = Gallery.new("NYC Arts", "New York City, NY")
g2 = Gallery.new("Lake Side Art", "Milwaukee, WI")
g3 = Gallery.new("Capital Creations", "Washington, DC")
g4 = Gallery.new("Liberty Gallery", "New York City, NY")

p1 = Painting.new("Apples", "impressionist")
p1.artist = jon
p1.gallery = g1

p2 = Painting.new("Balls", "cubist")
p2.artist = mattie
p2.gallery = g1

p3 = Painting.new("Cats", "cubist")
p3.artist = kate
p3.gallery = g3

p4 = Painting.new("Dock Scene", "impressionist")
p4.artist = kate
p4.gallery = g4

p5 = Painting.new("Elephant's Afternoon", "impressionist")
p5.artist = mattie
p5.gallery = g2


binding.pry

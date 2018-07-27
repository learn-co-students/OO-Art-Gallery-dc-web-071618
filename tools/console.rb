require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# john = Artist.new("John", 2)
# caleb = Artist.new("Caleb", 5)
# tyler = Artist.new("Tyler", 8)
#
# leuvre = Gallery.new("Leuvre", "Paris")
# museum = Gallery.new("Museum", "DC")
# street = Gallery.new("Street", "Millersburg")
#
# p1 = Painting.new(title: "First Painting", style: "gothic", artist: tyler, gallery: museum)
# p2 = Painting.new(title: "Second Painting", style: "modern", artist: john, gallery: museum)
# p3 = Painting.new(title: "Best Painting", style: "realistic", artist: caleb, gallery: leuvre)
# p3 = Painting.new(title: "Worst Painting", style: "realistic", artist: caleb, gallery: street)

binding.pry

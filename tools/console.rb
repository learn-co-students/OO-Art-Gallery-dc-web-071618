require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Artist.new(name: "Jack", years_active: 10)
a2 = Artist.new(name: "Jill", years_active: 15)
a3 = Artist.new(name: "Jeff", years_active: 20)
a4 = Artist.new(name: "Jane", years_active: 5)

g1 = Gallery.new(name: "Boston Gallery", city: "Boston")
g2 = Gallery.new(name: "Austin Gallery", city: "Austin")
g3 = Gallery.new(name: "Paris Gallery", city: "Paris")
g4 = Gallery.new(name: "London Gallery", city: "London")

p1 = Painting.new(title: "Red Painting", style:"Red", artist: a1, gallery: g1)
p2 = Painting.new(title: "Blue Painting", style:"Blue", artist: a2, gallery: g2)
p3 = Painting.new(title:"Green Painting", style: "green", artist: a3, gallery: g3)
p4 = Painting.new(title: "Orange Painting", style: "orange", artist: a4, gallery: g4)


binding.pry

require 'bundler/setup'
Bundler.require
require_all 'app'



###  WRITE YOUR TEST CODE HERE ###

a1 = Artist.new("Picasso", 64)
a2 = Artist.new("Frida Kahlo", 27)
g1 = Gallery.new("MOMA", "NYC")
g2 = Gallery.new("Louvre", "Paris")
p1 = Painting.new("Portraint of Gertrude Stein","DADA",a1, g1)
p2 = Painting.new("Self Portraint with Gun", "Bauhaus",a1, g2)
p3 = Painting.new("Mechanical Landscape", "Bauhaus", a2, g1)
p4 = Painting.new("Starry Night", "Impressionist", a2, g2)

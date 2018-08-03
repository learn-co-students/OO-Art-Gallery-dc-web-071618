require 'pry'
class Gallery
#Gallery has a name and city
#Gallery has many painting titles
#Gallery has many artist names through painting titles
  @@all=[]

  attr_reader :name, :city

def initialize(name, city)
  @name = name
  @city = city
  @@all<<self
end

def self.all
  @@all
end

# **GALLERY DELIVERABLES**

# Get a list of all gallery names
def self.gallery_list
  gallery_list = Gallery.collect do
    |p| p.name
  end
gallery_list
end
 #Get a list of all cities that have a gallery.
 #A city should not appear more than once in the list.
def self.city_list
  city_list = Gallery.collect do
    |p| p.city
  end
 city_list = city_list.uniq
end

#   - Get a list of artists that have paintings at a specific gallery
def artist_thru_gallery
  Painting.all.select {|a| a.artist == self}
end

#   - Get a list of the names of artists that have paintings at a specific gallery
def name_artist_thru_gallery
  self.artist_thru_gallery.collect {|a| a.names}
end
#   - Get the combined years of experience of all artists at a specific gallery
def years_active_thru_gallery
  total_years = 0
  active = self.artist_thru_gallery.collect {|a| a.years_active}
  total_years = active + total_years
end
end# gallery Class

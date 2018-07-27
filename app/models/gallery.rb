class Gallery
  @@all = []
  attr_reader :name, :city

def self.all
  @@all 
end

def initialize(name:, city:)
  @name = name
  @city = city
  @@all << self
end

def self.cities 
  self.all.map do |gallery|
    gallery.city 
  end.uniq
end

def artists 
  Artist.all.select do |artist|
    artist.galleries.include?(self)
  end
end

def artist_names
  self.artists.map do |artist|
    artist.name 
  end
end

def combined_years_of_experience 
  sum = 0
  self.artists.each do |artist|
    sum += artist.years_active 
  end
  sum
end
end

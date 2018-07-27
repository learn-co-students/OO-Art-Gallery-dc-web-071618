class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_cities
    all.map { |g| g.city }.uniq!
  end

  def artists
    Painting.all.select { |p| p.gallery == self }.map { |ptg| ptg.artist}
  end

  def artists_names
    self.artists.map { |a| a.name }
  end

  def artist_experience
    self.artists.map{ |a| a.years_active }.inject(0) {|sum, p| sum + p}
  end

end



# **GALLERY**
#
#   - Get a list of all galleries
#
#   - Get a list of all cities that have a gallery. A city should not appear more than once in the list.
#
#   - Get a list of artists that have paintings at a specific gallery
#
#   - Get a list of the names of artists that have paintings at a specific gallery
#
#   - Get the combined years of experience of all artists at a specific gallery

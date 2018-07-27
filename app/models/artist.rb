class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def all_paintings
    Painting.all.select { |p| p.artist == self }
  end

  def galleries
    self.all_paintings.map { |p| p.gallery }
  end

  def cities
    self.galleries.map { |g| g.city }
  end

  def self.exp_arr
    all.map { |a| a.years_active }
  end

  def self.average_experience
    self.exp_arr.inject(0) {|sum, p| sum + p}/self.exp_arr.count
  end

end



# **ARTIST**
#
#   - Get a list of all artists
#
#   - Get a list of all the paintings by a specific artists
#
#   - Get a list of all the galleries that a specific artist has paintings in
#
#   - Get a list of all cities that contain galleries that a specific artist has paintings in
#
#   - Find the average years of experience of all artists

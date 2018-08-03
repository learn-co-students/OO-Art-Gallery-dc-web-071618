require 'pry'
class Artist
  #has many painting.titles
  #has many galleries through painting.titles
  @@all =[]

  attr_reader :name

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all<<self
  end

  def self.all
    @@all
  end

  # **ARTIST**
  #
  #   - Get a list of all artist's names
  def self.artist_list
    artist_list = Artist.collect do
      |p| p.name
    end
    print artist_list
  end

  def painting_styles
    #   - Get a list of all artist's painting styles (a style should not appear more than once in the list)
    artist_styles_list = Painting.all.collect do
      |p| p.style
    end
  artist_styles_list = artist_styles_list.uniq
  end

  #   - Get a list of all the paintings by a specific artists
  def self.paintings_by_artist(name)
    Painting.all.collect do
      |p| p.name == self
    end
  end

#   - Get a list of all the galleries that a specific artist has paintings in
  def gallery_thru_painting
      Painting.all.select {|g| g.gallery == self}
  end

  #Get a list of all cities that contain galleries that a specific artist has paintings in
  def city_gallery_thru_painting
    self.gallery_thru_painting.collect {|a| a.city}
  end


   #Find the average years of experience of all artists
  #   - Get the combined years of experience of all artists at a specific gallery
  def average_years
    total_years = []
    active = self.artist_thru_gallery.collect {|a| a.years_active}
    total_years << active
    average_years = total_years.mean
  end

end#artist class

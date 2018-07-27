class Gallery
  attr_reader :name, :city

  ALL = []

  def initialize(name, city)
    @name = name
    @city = city
    ALL << self
  end

  def self.all
    ALL
  end

  def self.cities
    all.map do |gallery|
      gallery.city
    end.uniq
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end.uniq
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  def artists_experience
    artists.map do |artist|
      artist.years_active
    end.inject(:+)
  end
end

class Artist
  attr_reader :name, :years_active

  ALL = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    ALL << self
  end

  def self.all
    ALL
  end

  def self.avg_years_experience
    total_years = all.map do |artist|
      artist.years_active
    end
    total_years.inject(:+) / total_years.size
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end.uniq
  end
end

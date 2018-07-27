class Painting

  attr_reader :title, :style
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, style)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_styles
    all.map { |p| p.style }.uniq!
  end

end

# **PAINTING**
#
#   - Get a list of all paintings
#
#   - Get a list of all painting styles (a style should not appear more than once in the list)

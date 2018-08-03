require 'pry'
class Painting
  #Painting titles belong to artists
  #Painting titles belong to Galleries
  #Artist Belongs to GALLERY through paintings
  #Gallery Belongs to Artist through paintings

@@all =[]

  attr_reader :title, :style, :artist, :gallery

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist=artist
    @gallery=gallery
    @@all<<self
  end

  def self.all
    @@all
  end

  # **PAINTING DELIVERABLES**
def self.all_titles
    # For each painting collect the title
  title_list = Painting.all.collect do
    |p| p.title
  end

end

def self.all_styles
  #   - Get a list of all painting styles (a style should not appear more than once in the list)
  style_list = Painting.all.collect do
    |p| p.style
  end
  print style_list
  end
end # painting class

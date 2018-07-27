class Painting
  attr_accessor :title, :style, :artist, :gallery

  ALL = []

  def initialize(title:, style:, artist: nil, gallery: nil)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    ALL << self
  end

  def self.all
    ALL
  end

  def self.all_painting_styles
    all.map do |painting|
      painting.style
    end.uniq
  end
end

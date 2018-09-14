class Painting

  attr_reader :title, :style, :gallery, :artist

  @@all = []

  def initialize(title, style, gallery, artist)
    @title = title
    @style = style
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.styles
    all.map(&:style).uniq
  end

end

class Painting

  attr_reader :title, :style, :artist, :gallery

  @@all = []

  def initialize(title, style, artist, gallery)
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
    all_paint = []
    all.map do |paint|
      all_paint << paint.style
    end
    all_paint.uniq
  end
end

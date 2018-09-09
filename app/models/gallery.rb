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

  def self.cities
    all.map {|gallery| gallery.city}.uniq
  end

  def artists
    artist = []
    Painting.all.each {|painting| artist << painting.artist if painting.gallery == self}
    artist
  end

  def artist_names
    artists.map {|artist| artist.name}
  end

  def experience_of_all_artists
    experience = 0
    artists.map {|artist| experience += artist.years_active}
    experience
  end

end

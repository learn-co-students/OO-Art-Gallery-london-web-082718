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

  def paintings
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    paintings.map(&:artist)
  end

  def artists_names
    artists.map(&:name)
  end

  def artists_experience
    artists.map(&:years_active).inject(:+) / artists.count
  end

end

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
    all_cities = []
    all.map do |c|
      all_cities << c.city
    end
    all_cities.uniq
  end

  def artists
    list = []
    Painting.all.map do |paint|
      paint.gallery == self
      list << paint.artist
    end
    list.uniq
  end

  def artists_names
    artists.map do |n|
      n.name
    end
  end

  def comb_years
    years = 0
    artists.map do |y|
      years += y.years_active
    end
    years
  end
end

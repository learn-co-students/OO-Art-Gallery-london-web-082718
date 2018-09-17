class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |paint|
      paint.artist == self
    end
  end

  def galleries
    paintings.map do |gal|
      gal.gallery
    end
  end

  def all_cities
    galleries.map do |c|
      c.city
    end
  end

  def self.years_average
    total = 0
    self.all.map do |years|
      total += years.years_active
    end
    total / self.all.length
  end
end

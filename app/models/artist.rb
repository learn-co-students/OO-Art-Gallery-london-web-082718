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

  def self.years_active
    all.map(&:years_active).inject(:+) / all.count
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map(&:gallery)
  end

  def cities
    galleries.map(&:city)
  end

end

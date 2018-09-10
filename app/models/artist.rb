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


  # Get a list of all the paintings by a specific artists
  def painting_by_artist
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

# Using painting_by_artist method - to get the galleries
  def gal_with_artist
    painting_by_artist.map do |painting|
      painting.gallery
    end
  end

# Using painting_by_artist to get the cities of the galleries
  def cities_with_artist
    gal_with_artist.map do |painting|
      painting.city
    end
  end

  def self.average_exp
    total_exp = 0
    self.all.each { |artist_obj| total_exp += artist_obj.years_active }
    return total_exp.to_f / self.all.size.to_f
  end




end

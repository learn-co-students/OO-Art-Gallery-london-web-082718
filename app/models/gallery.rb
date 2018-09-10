require 'pry'

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

  def self.all_cities
    cities = []
    self.all.each do |gal_obj|
      cities << gal_obj.city
    end
    cities.uniq
  end

  def artists_at_gal
    artists = []
    Painting.all.each do |paint_obj|
      # binding.pry
      if paint_obj.gallery == self
        artists << paint_obj.artist
      end
    end
    artists
  end

  def artist_names_at_gal
    artists = []
    Painting.all.each do |paint_obj|
      # binding.pry
      if paint_obj.gallery == self
        artists << paint_obj.artist.name
      end
    end
    artists
  end

  def combined_age_artists
    tot_age = 0
    artists_at_gal.each do |artist|
      tot_age += artist.years_active
    end
    tot_age
  end


end

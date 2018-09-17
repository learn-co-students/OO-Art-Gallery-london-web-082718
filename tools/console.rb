require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

art_1 = Artist.new("Cam", 15)
art_2 = Artist.new("William", 2)
art_3 = Artist.new("Jade", 5)

gal_1 = Gallery.new("Cool one", "San Diego")
gal_2 = Gallery.new("Crappy one", "Boston")

paint_1 = Painting.new("hello", "impressionist", art_1, gal_2)
paint_2 = Painting.new("world", "abstract", art_2, gal_2)
paint_3 = Painting.new("bird", "finger painting", art_3, gal_2)
paint_4 = Painting.new("cat", "impressionist", art_1, gal_1)
paint_5 = Painting.new("dog", "abstract", art_2, gal_1)
paint_6 = Painting.new("cow", "finger painting", art_3, gal_1)





binding.pry

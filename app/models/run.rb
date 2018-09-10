require 'pry'

require_relative 'artist'
require_relative 'gallery'
require_relative 'painting'


# RELATIONSHIP

# Artist HAS MANY paintings,          painting BELONGS TO an artist
# Gallery HAS MANY paintings,          painting BELONGS TO a gallery
# Gallery HAS MANY ARTISTS THROUGH paintings

vvn = Artist.new("VVN", 15)
ldv = Artist.new("Leo Da Vinci", 35)
dali = Artist.new("Salvador Dali", 50)

gal_1 = Gallery.new("Gal 1", "Paris")
gal_2 = Gallery.new("Gal 2", "London")
gal_3 = Gallery.new("Gal 1", "NYC")
gal_4 = Gallery.new("Gal 4", "London")

mona = Painting.new("Mona Lisa", "oil", ldv, gal_1)
starry = Painting.new("Starry Night", "abstract", vvn, gal_3)
cafe = Painting.new("Cafe Terriace at Night", "oil", vvn, gal_2)
last_supper = Painting.new("The Last Supper", "mural", ldv, gal_2)
persistence = Painting.new("Persistence of Memory", "oil", dali, gal_3)




binding.pry
p "EOF"

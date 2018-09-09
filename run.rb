require 'pry'

require_relative 'app/models/artist'
require_relative 'app/models/gallery'
require_relative 'app/models/painting'

van_gogh = Artist.new("Vincent Van Gogh", 20)
monet = Artist.new("Claude Oscar Monet", 30)
pablo = Artist.new("Pablo Picasso", 10)
andy = Artist.new("Andy Warhol", 15)
frida = Artist.new("Frida Kahlo", 50)

tate = Gallery.new("Tate", "London")
louvre = Gallery.new("Louvre", "France")
metropolitan = Gallery.new("Metropolitan", "NYC")
museo = Gallery.new("Museo", "Madrid")
uffizi = Gallery.new("Uffizi", "Florence")


Painting.new("example1", "impressionist", van_gogh, tate)
Painting.new("example2", "cubism", frida, tate)
Painting.new("example3", "pop culutre", andy, tate)
Painting.new("example4", "contemporary", pablo, tate)
Painting.new("example5", "abstract", monet, tate)
Painting.new("example6", "impressionist", van_gogh, louvre)
Painting.new("example7", "impressionist", van_gogh, louvre)
Painting.new("example8", "abstract", monet, louvre)
Painting.new("example9", "deco", frida, louvre)
Painting.new("example10", "deco", frida, louvre)
Painting.new("example11", "water colour", pablo, tate)
Painting.new("example12", "fine art", pablo, metropolitan)
Painting.new("example13", "impressionist", van_gogh, uffizi)
Painting.new("example9", "pop culutre", andy, uffizi)
Painting.new("example10", "expressionism", frida, uffizi)
Painting.new("example11", "water colour", andy, museo)
Painting.new("example12", "cubism", frida, tate)
Painting.new("example13", "contemporary", pablo, metropolitan)




binding.pry
p "HEARD"

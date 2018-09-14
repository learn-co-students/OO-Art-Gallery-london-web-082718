require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

louvre = Gallery.new("Louvre", "Paris")
da_vinci = Artist.new("Da Vinci", 50)
mona = Painting.new("Mona Lisa", "Renaissance", louvre, da_vinci)

binding.pry

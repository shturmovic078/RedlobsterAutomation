require 'rmagick'
include magick
# Create a 100x100 red image.
f = Image.new(100,100) { self.background_color = "red" }
f.display
exit
require_relative 'lib/garment'
require_relative 'lib/wardrobe'

filenames = Dir[File.join(__dir__, 'data', '*.txt')]

wardrobe = Wardrobe.new(filenames)

# puts wardrobe.garment_types
# puts wardrobe.garments_of_type('Pants')

# a = Garment.new('shorts', 'pants', '(-1, +20)')
#
# puts a.suitable_for_weather?(19)
# puts a.suitable_for_weather?(21)
# puts a.suitable_for_weather?(1)
# puts a.suitable_for_weather?(0)
# puts a.suitable_for_weather?(-1)
# puts a.suitable_for_weather?(-2)

# weather = 1
#
# puts wardrobe.suitable_garments(weather)
puts wardrobe.clothes_by_type

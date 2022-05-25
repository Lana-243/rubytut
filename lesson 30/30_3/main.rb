require_relative 'lib/garment'
require_relative 'lib/wardrobe'

filenames = Dir[File.join(__dir__, 'data', '*.txt')]

wardrobe = Wardrobe.from_files(filenames)

puts 'Welcome to program that will help you choose your clothes!'
puts 'What temperature is it today?'

answer = STDIN.gets.to_i

puts 'Wardrobe that is suitable for this weather:'
puts wardrobe.suitable_garments(answer)

require_relative 'lib/item'
require_relative 'lib/book'
require_relative 'lib/movie_4'

a = Movie_4.new("Leon", 3, 2)

puts "Movie #{a.title} costs #{a.price}"

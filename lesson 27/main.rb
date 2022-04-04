require_relative 'lib/item'
require_relative 'lib/book'
require_relative 'lib/movie'

b = Book.new("Happy Potter", "Fantasy", "J. K. Rowling", 570, 2)

puts b.to_s

c = Movie.new("Avatar", "Fantasy", "J. Cameron", 700, 123)

puts c

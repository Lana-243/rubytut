require_relative 'lib/item'
require_relative 'lib/book'
require_relative 'lib/movie'

book = Book.from_file('./data/books/01.txt')
movie = Movie.from_file('./data/movies/02.txt')
puts book
puts movie

require_relative 'lib/movie'

movie1 = Movie.new("Kill Bill", "Tarantino", "1994")
movie2 = Movie.new("Titanic", "James Cameron", "1997")

puts movie1.director
puts movie2.title
movie1.first_screening_year ="2003"
puts movie1.first_screening_year
require_relative 'lib/movie_1'

movie1 = Movie_1.new("Kill Bill", "Tarantino", "1994")
movie2 = Movie_1.new("Titanic", "James Cameron", "1997")

puts movie1.director
puts movie2.title
movie1.first_screening_year ="2003"
puts movie1.first_screening_year

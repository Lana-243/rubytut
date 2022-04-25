require_relative 'lib/film'
require_relative 'lib/film_collection'

puts "Hello there!"
puts "Lets check how well you know movie directors"
puts "It's movie night!"
puts "Choose the director whose movie you would like to watch:"

filenames = Dir[File.join(__dir__, 'data', '*.txt')]

collection = FilmCollection.new(filenames)

collection.directors.each.with_index(1) do |director, index|
  puts "#{index}: #{director}"
end

director_choice = 0
until director_choice.between?(1, collection.directors_number)
  puts "Movie of which director would you like to watch?"
  director_choice = STDIN.gets.to_i
end

puts "And today I recommend this movie: #{collection.movie_choice(director_choice).director} - #{collection.movie_choice(director_choice).title} (#{collection.movie_choice(director_choice).year})"
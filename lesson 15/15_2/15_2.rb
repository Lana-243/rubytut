require_relative 'lib/movie'

puts "Hello there!"
puts "Lets check how well you know movie directors"
filenames = Dir[File.join(__dir__, 'data', '*.txt')]

questions_data = filenames.map { |filename| File.readlines(filename, chomp: true) }
movies = questions_data.map { |title, director, year| Movie.new(title, director, year) }
directors = movies.map { |movie| movie.director }.uniq

puts "It's movie night!"
puts "Choose the director whose movie you would like to watch:"

directors.each.with_index(1) do |director, index|
  puts "#{index}: #{director}"
end
director_choice = 0
until director_choice.between?(1, directors.length)
  puts "Movie of which director would you like to watch?"
  director_choice = STDIN.gets.to_i
end
movies_choice = movies.select { |movie| movie.director == directors[director_choice - 1] }.sample

puts "And today I recommend this movie: #{movies_choice.director} - #{movies_choice.title}(#{movies_choice.year})"

require_relative 'lib/movie'

QUESTION_QUANTITY = 3
OPTION_QUANTITY = 4

puts "Hello there!"
puts "Lets check how well you know movie directors"
filenames = Dir[File.join(__dir__, 'data', '*.txt')]

questions_data = filenames.map { |filename| File.readlines(filename, chomp: true) }
movies = questions_data.map { |title, director, year| Movie.new(title, director, year) }
game_movies = movies.sample(QUESTION_QUANTITY)
directors = movies.map { |movie| movie.director }.uniq

points = 0
game_movies.each do |movie|
  puts "Who filmed #{movie.info}?"
  directors_options = directors.sample(OPTION_QUANTITY)
  directors_options[rand(directors_options.length)] = movie.director if !directors_options.include?(movie.director)
  directors_options.each.with_index(1) do |option, index|
    puts "#{index}. #{option}"
  end
  user_answer = STDIN.gets.to_i
  if directors_options[user_answer - 1] == movie.director
    puts "Correct!"
    points += 1
  else
    puts "Incorrect! Right answer: #{movie.director}"
  end
end

puts "The end! You got #{points} out of #{QUESTION_QUANTITY} right"

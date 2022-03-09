require_relative 'lib/movie'

QUESTION_QUANTITY = 3
OPTION_QUANTITY = 4
puts "Hello there!"
puts "Lets check how well you know movie directors"
filenames = Dir[File.join(__dir__, 'data', '*.txt')]

questions_data = filenames.map { |filename| File.readlines(filename, chomp: true) }
quiz_questions_data_full = questions_data
                            .shuffle
                            .map { |title, director, year|
                              Movie.new(title, director, year)
                            }
quiz_questions_data_short = quiz_questions_data_full.sample(QUESTION_QUANTITY)

correct_answer = 0
points = 0
quiz_questions_data_short.each do |movie|
  puts "Who filmed \"#{movie.title}\" (#{movie.first_screening_year})?"
  answer_options = quiz_questions_data_full.sample(OPTION_QUANTITY).map { |movie| movie.director}
  answer_options[rand(answer_options.length)] = movie.director if !answer_options.include?(movie.director)
  answer_options.each.with_index(1) do |option, index|
    puts "#{index}. #{option}"
    correct_answer = index if option == movie.director
  end
  user_answer = STDIN.gets.to_i
  if user_answer == correct_answer
    puts "Correct!"
    points += 1
  else
    puts "Incorrect! Right answer: #{movie.director}"
  end
end

puts "The end! You got #{points} out of #{QUESTION_QUANTITY} right"

QUESTION_QUANTITY = 3

puts "Welcome to the quiz!"
puts "You can test your knowledge by answering next questions!"

filenames = Dir[File.join(__dir__, "data", "*.txt")]

questions_data = filenames.map { |filename| File.readlines(filename, chomp: true) }
quiz_questions_data = questions_data.sample(QUESTION_QUANTITY)
points = 0
quiz_questions_data.each do |question, correct_answer|
  puts question
  user_answer = STDIN.gets.chomp
  if correct_answer.upcase  == user_answer.upcase
    points += 1
    puts "Correct!"
  else
    puts "Wrong answer."
    puts "Correct answer: #{correct_answer}"
  end
end

puts "The end! You earned #{points} points from #{quiz_questions_data.length}"

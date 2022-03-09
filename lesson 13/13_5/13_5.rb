# frozen_string_literal: true

require_relative 'lib/question'

QUESTION_QUANTITY = 5

puts 'Welcome to the quiz!'
puts 'You can test your knowledge by answering next questions!'

filenames = Dir[File.join(__dir__, 'data', '*.txt')]

questions_data = filenames.map { |filename| File.readlines(filename, chomp: true) }
quiz_questions_data = questions_data
                        .sample(QUESTION_QUANTITY)
                        .map { |question, correct_answer, points|
                          Question.new(question, correct_answer, points)
                        }
points = 0
correct_answers = 0

quiz_questions_data.each do |quiz_question|
puts quiz_question.text
  user_answer = STDIN.gets.chomp
  if quiz_question.answer.upcase == user_answer.upcase
    correct_answers += 1
    points += quiz_question.answer_points.to_i
    puts 'Correct!'
  else
    puts 'Wrong answer.'
    puts "Correct answer: #{quiz_question.answer}"
  end
end

puts 'The end!'
puts "Questions answered right: #{correct_answers} of #{quiz_questions_data.length}"
puts "You earned #{points} points"

# frozen_string_literal: true
require "rexml/document"
require "timeout"
require_relative "lib/question"
require_relative "lib/quiz"

puts 'Welcome to the quiz!'
puts 'You can test your knowledge by answering next questions!'

current_path = File.dirname(__FILE__)

quiz = Quiz.new(5)
quiz.read_questions(current_path)

quiz_questions_data = quiz.question_list

quiz_questions_data.each do |quiz_question|

  puts quiz_question.text
  quiz_question.options.shuffle.each { |option| puts option }
  user_answer = ""

  begin
    Timeout::timeout quiz_question.time * 60 do
      user_answer = STDIN.gets.chomp
    end
  rescue Timeout::Error
    puts "You have spent too much time!"
    puts "The game ends"
    exit
  end
  #there is an error with answer check
  if quiz_question.correct_answer?(user_answer)
    quiz.add_correct_answers
    quiz.add_points(quiz_question.points.to_i)
    puts 'Correct!'
  else
    puts 'Wrong answer.'
    puts "Correct answer: #{quiz_question.answer}"
  end
end

puts quiz.ending_text

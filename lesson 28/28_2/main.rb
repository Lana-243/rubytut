# frozen_string_literal: true
require "rexml/document"
require "timeout"
require_relative "lib/question"
require_relative "lib/quiz"

puts 'Welcome to the quiz!'
puts 'You can test your knowledge by answering next questions!'

current_path = File.dirname(__FILE__)

quiz = Quiz.read_questions(current_path, 5)

quiz.question_list.each do |quiz_question|

  quiz_question.show_questions_and_options
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

  quiz.answer_check(quiz_question, user_answer)
end

puts quiz.ending_text

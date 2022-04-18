# frozen_string_literal: true
require "rexml/document"
require "timeout"
require_relative 'lib/question'

QUESTION_QUANTITY = 5

puts 'Welcome to the quiz!'
puts 'You can test your knowledge by answering next questions!'

current_path = File.dirname(__FILE__)
file_name = current_path + "/data/questions.xml"

abort "Sorry, file questions.xml was not found" unless File.exist?(file_name)
questions = []

file = File.new(file_name)

doc = REXML::Document.new(file)

doc.elements.each("questions/question") do |item|
  text = item.elements["text"].text
  time = item.attributes["minutes"].to_i
  points = item.attributes["points"].to_i
  answer = ""
  options = []
  item.elements.each("options/option") do |option|
    answer = option.text if option.attributes["correct"] = "true"
    options << option.text
  end
  questions << Question.new(text, answer, options, points, time)
end

file.close


quiz_questions_data = questions.sample(QUESTION_QUANTITY).shuffle
points = 0
correct_answers = 0
timeout =  false

quiz_questions_data.each do |quiz_question|

    puts quiz_question.text
    quiz_question.options.shuffle.each { |option| puts option}
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
    if quiz_question.answer == user_answer
      correct_answers += 1
      points += quiz_question.points.to_i
      puts 'Correct!'
    else
      puts 'Wrong answer.'
      puts "Correct answer: #{quiz_question.answer}"
    end
end

puts 'The end!'
puts "Questions answered right: #{correct_answers} of #{quiz_questions_data.length}"
puts "You earned #{points} points"

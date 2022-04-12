# frozen_string_literal: true

require_relative 'lib/question'

QUESTION_QUANTITY = 5

puts 'Welcome to the quiz!'
puts 'You can test your knowledge by answering next questions!'

file_name = Dir[File.join(__dir__, 'data', 'questions.xml')]

abort "Sorry, file questions.xml was not found" unless File.exist?(file_name)
questions = []

file = File.new(file_name) # открыли файл

doc = REXML::Document.new(file) # создаем новый документ REXML, построенный из открытого XML файла
doc.elements.each("questions/question") do |item|
  time = item.attributes["minutes"]
  points = item.attributes["points"]
  text = item.elements["text"]
  options = item.elements["options"].each
  text = item.elements["text"]
end

first_name = doc.root.elements["first_name"].text
second_name = doc.root.elements["second_name"].text
last_name = doc.root.elements["last_name"].text
phone = doc.root.elements["phone"].text
email = doc.root.elements["email"].text
skills = doc.root.elements["skills"].text

file.close

<question minutes="2" points="4">
<text>What is telephone code of Ukraine?</text>
    <options>
      <option correct="true">380</option>
<option>270</option>
      <option>117</option>
</options>
  </question>


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

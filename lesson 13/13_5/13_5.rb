require_relative 'lib/question'

puts "Welcome to the quiz!"
puts "You can test your knowledge by answering next questions!"

QUIZ_QUANTITY = 5
current_path = File.dirname(__FILE__)
quiz_list = Dir.glob("data/*").shuffle!.first(QUIZ_QUANTITY)

questions = []
quiz_list.each do |quiz_name|
  file_path = "#{current_path}/#{quiz_name}"
  quiz_text = File.readlines(file_path, chomp: true)
  questions << Question.new(quiz_text[0], quiz_text[1], quiz_text[2].to_i)
end

points = 0
correct_answers = 0
for i in 0..(QUIZ_QUANTITY-1)
  puts questions[i].text
  user_answer = gets.chomp
  if questions[i].answer == user_answer
    puts "Correct!"
    points += questions[i].answer_points
    correct_answers += 1
  else
    puts "Wrong answer. Correct answer: #{questions[i].answer}"
  end
end

puts "The end!"
puts "Questions answered right: #{correct_answers}"
puts "You earned #{points} points"

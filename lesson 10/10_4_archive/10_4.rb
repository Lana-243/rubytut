puts "Welcome to the quiz!"
puts "You can test your knowledge by answering next questions!"

QUIZ_QUANTITY = 3
current_path = File.dirname(__FILE__)
quiz_list = Dir.glob("data/*").shuffle!.first(QUIZ_QUANTITY)

questions = []
answers = []
quiz_list.each do |quiz_name|
  file_path = "#{current_path}/#{quiz_name}"
  quiz_text = File.readlines(file_path, chomp: true)
  questions << quiz_text[0]
  answers <<  quiz_text[1]
end

points = 0
for i in 0..(QUIZ_QUANTITY-1)
  puts questions[i]
  user_answer = gets.chomp
  if answers[i] == user_answer
    puts "Correct!"
    points += 1
  else
    puts "Wrong answer. Correct answer: #{answers[i]}"
  end
end

puts "The end! You earned #{points} points from #{QUIZ_QUANTITY}"

require_relative 'lib/question'
require_relative 'data/questions'
require_relative 'data/answers'
require_relative 'data/results'

puts "Welcome to the quiz!"

quiz_questions = QUESTIONS.each_with_index.map do |question, index|
  Question.new(question[0], question.drop(1), ANSWERS[index])
end

points = 0
quiz_questions.each do |question|
  answer = ""
  until question.option?(answer)
    puts question.question
    question.options.each.with_index(1) { |option, index| puts "#{index}. #{option}" }
    answer = STDIN.gets.chomp
  end
  points += question.result(question.wins?(answer))
end

result = case points
         when 0..2 then "С логикой у вас очень слабо"
         when 3..6 then "Логика не отсутствует, но, наверное, имеет смысл ее потренировать."
         when 7..10 then "Вполне приемлемый результат, говорящий о нормально развитых логических способностях."
         when 11..12 then "Говорят о хорошо развитых логических способностях. Вас трудно убедить речами, в которых"\
            " есть логические неувязки. Вы видите многие ситуации «насквозь» и можете «предсказывать» поведение людей из вашего окружения."
         end
puts "Ваш результат:"
puts result

def inclination(number, word1, word2, word3)
  result = 
    if number.digits[-1] == 1 && number.digits[-2] != 1
      word1
    elsif number.digits[-1].between?(2,4) && number.digits[-2] != 1
      word2
    else
      word3
    end
  return result
end

puts "Пожалуйста внесите число:"
number = gets.to_i
puts "слово в единственном числе"
answer1 = gets.chomp
puts "слово в единственном числе, родительном падеже"
answer2 = gets.chomp
puts "слово во множественном числе, родительном падеже"
answer3 = gets.chomp

puts "Вот вам #{number} #{inclination(number, answer1, answer2, answer3)}!"

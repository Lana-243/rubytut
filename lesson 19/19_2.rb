
puts "First number:"
number_1 = STDIN.gets.to_f
puts "Second number:"
number_2 = STDIN.gets.to_f
puts "Please choose the operation (+ - * /):"
operation = STDIN.gets.chomp

result =
  case operation
  when "+"
    number_1 + number_2
  when "-"
    number_1 - number_2
  when "*"
    (number_1 * number_2).round(2)
  when "/"
    if number_2.zero? == false
      (number_1 / number_2).round(2)
      else
      "Infinity!"
    end
  else
    "Operation is incorrect!"
  end

puts result


puts "First number:"
number_1 = STDIN.gets.to_i
puts "Second number:"
number_2 = STDIN.gets.to_i
puts "Please choose the operation (+ - * /):"
operation = STDIN.gets.chomp

result =
    case operation
    when "+"
      number_1 + number_2
    when "-"
      number_1 - number_2
    when "*"
      number_1 * number_2
    when "/"
      begin
      number_1 / number_2
      rescue ZeroDivisionError => error
        "You cannot divide by '0'!"
      end
    else
      "Operation is incorrect!"
    end

puts result


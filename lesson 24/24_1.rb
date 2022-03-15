puts "Please enter how many times you would like to get exact time:"
repeat_number = STDIN.gets.to_i

repeat_number = 10 if !repeat_number.positive?

puts repeat_number
repeat_number.times { puts Time.now.strftime("%Y-%m-%d %H:%M:%S %z") }

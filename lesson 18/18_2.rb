puts "Please enter your phone number:"
answer = STDIN.gets.chomp

number_length = answer.scan(/\d/).length

if number_length >= 5 && number_length <= 15 && answer.match(/[a-z]+/i).nil?
  puts "Thank you!"
else
  puts "Please enter a valid phone number"
end

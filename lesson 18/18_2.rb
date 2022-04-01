puts "Please enter your phone number:"
answer = STDIN.gets.chomp

if answer.match(/\A(\s*)?(\+)?([- ()]?\d[- ()]?){10,14}(\s*)?\z/)
  puts "Thank you!"
else
  puts "Please enter a valid phone number"
end

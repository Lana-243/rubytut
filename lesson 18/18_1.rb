puts "Please enter email:"
answer = STDIN.gets.chomp
regex = /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i
if (answer =~ regex) == nil
  puts "Please enter a valid email"
else
  puts "Thank you!"
end

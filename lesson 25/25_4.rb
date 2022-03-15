def happy_birthday(name, age, text)
  puts "Dear #{name},"
  puts
  puts "Happy birthday!"
  puts "You are #{age} today"
  puts
  puts text
end

user1 = {
  :name => "Alina",
  :age => "25",
  :text => "Hope your dreams come true!"
}

puts happy_birthday(user1[:name], user1[:age], user1[:text])

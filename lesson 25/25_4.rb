def happy_birthday(name, age, text)
  "Dear #{name},\n\nHappy birthday!\nYou are #{age} today\n\n#{text}"
end

user1 = {
  name: "Alina",
  age: "25",
  text: "Hope your dreams come true!"
}

puts happy_birthday(user1[:name], user1[:age], user1[:text])

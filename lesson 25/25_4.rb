def happy_birthday(name, age, text)
  <<~HEREDOC
    Dear #{name},
  
    Happy birthday!
    You are #{age} today
  
    #{text}
  HEREDOC
end

user1 = {
  name: "Alina",
  age: "25",
  text: "Hope your dreams come true!"
}

puts happy_birthday(user1[:name], user1[:age], user1[:text])

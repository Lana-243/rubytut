shopping_list = [
  "milk",
  "eggs",
  "bread",
  "oranges",
  "spacecraft"
]

puts "Need to buy: #{shopping_list}"


while shopping_list.length.nonzero?

  puts "What you already bought?"
  answer = gets.chomp
  shopping_list.delete(answer)
  puts "Need to buy as well: #{shopping_list}"

end

puts "Congrats! You just finished shopping!"


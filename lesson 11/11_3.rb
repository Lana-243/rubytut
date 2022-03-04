def shuffle_letters(word)
  return word.chars.shuffle.join
end

puts "Введите слово:"
input = gets.chomp

puts shuffle_letters(input)

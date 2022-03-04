def count_vowels(word)
  vowels = %w[а и е ё о у ы э ю я]
  return word.downcase.chars.count { |letter| vowels.include?(letter)}
end

def count_consonants(word)
  return word.length - count_vowels(word)
end

puts "Введите слово:"
word = gets.chomp

puts "Гласных: #{count_vowels(word)}"
puts "Соласных: #{count_consonants(word)}"
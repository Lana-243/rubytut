def shuffle_letters(phrase)
  phrase = phrase.split.map! {|word| word.chars.shuffle!.join}
  phrase = phrase.join(" ")
  return phrase
end

puts "Введите слово:"
input = gets.chomp

puts shuffle_letters(input)

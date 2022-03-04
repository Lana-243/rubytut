alphabet_array = [*'a'..'z', *'A'..'Z', *'0'..'9']

puts "Give me a word"
original_string = gets.chomp.downcase

original_string.each_char do |char|
  if alphabet_array.include?(char) == false
    original_string.delete!(char)
  end
end

reverse_string = original_string.reverse

if reverse_string == original_string
  puts "Да, это палиндром"
else
  puts "Нет, это не палиндром"
end


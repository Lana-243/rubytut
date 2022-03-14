require 'translit'
def translit(word)
  Translit.convert(word)
end

puts "Please enter a phrase for translit"
answer = gets.chomp
puts translit(answer)
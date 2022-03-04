
def short_name(first, middle, last)
  return "#{last} #{first[0]}. #{middle[0].}"
end


puts "Введите фамилию:"
last_name = gets.chomp

puts "Введите имя:"

first_name = gets.chomp

puts "Введите отчество:"

middle_name = gets.chomp

puts "Ваше ФИО сокращенно:"
puts "#{short_name(first_name, middle_name, last_name)}"

puts "Введите строку, которую надо проверить на «палиндромность»:"
original_string = gets.chomp.downcase

original_string.delete!("^a-z0-9а-яё")

reverse_string = original_string.reverse

if reverse_string == original_string
  puts "Да, это палиндром"
else
  puts "Нет, это не палиндром"
end

require 'json'

file = File.read("#{__dir__}/data/table.json", encoding: 'UTF-8')

table = JSON.parse(file)

# Выводим пользователю количество элементов
puts "Number of elements: #{table.keys.size}"

# Выводим пользователю сами элементы (ключи ассоциативного массива)
puts table.keys

# Спрашиваем у пользователя, какой элемент его интересует и записываем его
# выбор в переменную element.
puts "What element would you like to learn about?"
element = gets.chomp

# Проверка — есть ли в хэше элемент, который спросил пользователь
if table.key?(element)
  puts "It was first opened by: #{table[element]}"
else
  puts "Sorry, we do not know about such element yet."
end

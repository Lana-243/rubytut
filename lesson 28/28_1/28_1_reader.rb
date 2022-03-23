require "rexml/document" # подключаем парсер
require "date" # будем использовать операции с данными

current_path = File.dirname(__FILE__)
file_name = current_path + "/28_1.xml"

# UNLESS в руби - противоположный по смыслу оператору IF
# прерываем выполнение программы досрочно, если конечно файл не существует.
abort "Извиняемся, хозяин, файлик my_expenses.xml не найден." unless File.exist?(file_name)

file = File.new(file_name) # открыли файл

doc = REXML::Document.new(file) # создаем новый документ REXML, построенный из открытого XML файла

first_name = doc.root.elements["first_name"].text
second_name = doc.root.elements["second_name"].text
last_name = doc.root.elements["last_name"].text
phone = doc.root.elements["phone"].text
email = doc.root.elements["email"].text
skills = doc.root.elements["skills"].text

file.close

puts first_name
puts second_name
puts last_name
puts phone
puts email
puts skills

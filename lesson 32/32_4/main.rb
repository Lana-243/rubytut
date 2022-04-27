require 'json'

file = File.read("#{__dir__}/data/table.json", encoding: 'UTF-8')

table = JSON.parse(file)

puts "Number of elements: #{table.keys.size}"

puts table.keys

puts "What element would you like to learn about?"
element = gets.chomp

if table.key?(element)
  puts "Atomic number: #{table.dig(element, 'number')}"
  puts "Name: #{table.dig(element, 'name')}"
  puts "First discovered by: #{table.dig(element, 'discoverer')}"
  puts "Year: #{table.dig(element, 'year')}"
  puts "Density: #{table.dig(element, 'density').to_f}"
else
  puts "Sorry, we do not know about such element yet."
end

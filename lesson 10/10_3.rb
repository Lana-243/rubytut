puts "What file would you like to see? (give a number)"

file_list = Dir.glob("data/*")

file_list.each_with_index do |file_name, index|
  puts "#{index}: #{file_name}"
end

input = gets.to_i

file_name = file_list[input]
file = File.open(file_name) do |f|
  puts f.read
end


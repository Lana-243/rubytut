current_path = File.dirname(__FILE__)

puts "Please type file path:"
file_name = gets.chomp 
file_path = current_path + file_name

if File.exist?(file_path)
  f = File.new(file_path)
  lines = f.readlines
  f.close
  puts "You opened file #{file_name}"
  puts "Number of lines: #{lines.length}"
  puts "Number of empty lines: #{lines.count("")}"
  puts "The last 5 lines:"
  for number in (-5..-1) 
    puts lines[number]
  end
else
  puts "No such file"
end

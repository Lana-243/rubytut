puts "Hey there! I am your diary. What do you have on your mind?"

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" do
  line = STDIN.gets.chomp
  all_lines << line
end

time = Time.now

file_name = time.strftime("%Y-%m-%d")

time_string = time.strftime("%H:%M")

separator = "------------------------"

file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")

file.print("\n\r" + time_string + "\n\r")

all_lines.pop

for item in all_lines do
  file.puts(item)
end

file.puts(separator)

file.close

puts "Your input was saved to file #{file_name}.txt"
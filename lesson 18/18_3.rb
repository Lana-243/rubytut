puts "Please enter a line with hashtags:"
answer = STDIN.gets.chomp

answer = answer.split(/\.|,|!|\s|\?/)
hashtags = answer.select { |i| i[/^#/] }
puts puts "Whe found the following hashtags: #{hashtags.join(", ")}"

require 'digest'

puts 'enter phrase to cipher'
answer = STDIN.gets.chomp

puts 'How should we cipher it?'
puts '1. MD5'
puts '2. SHA1'

answer_number = STDIN.gets.to_i

puts 'Here is the result:'
if answer_number == 1
  puts Digest::MD5.hexdigest(answer)
elsif answer_number == 2
  puts Digest::SHA1.hexdigest(answer)
end

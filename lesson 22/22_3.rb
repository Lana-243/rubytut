require 'digest'

puts 'enter phrase to cipher'
answer = STDIN.gets.chomp

puts 'How should we cipher it?'
puts '1. MD5'
puts '2. SHA1'
puts '3. SHA2'


answer_number = STDIN.gets.to_i

puts 'Here is the result:'
case answer_number
when 1 then puts Digest::MD5.hexdigest(answer)
when 2 then puts Digest::SHA1.hexdigest(answer)
when 3 then puts Digest::SHA2.hexdigest(answer)
end

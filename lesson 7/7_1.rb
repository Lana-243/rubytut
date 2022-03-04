puts "Please give me a number"
answer = gets.chomp.to_i

count = 1
result = []

while count <= answer
  result << count
  count += 1
end

puts "Sum: " + result.sum.to_s
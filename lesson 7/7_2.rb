arr = []

puts "What is the length of array?"
answer = gets.to_i

count = 1

while count <= answer
  arr << rand(100)
  count += 1
end

max = 0
for each in arr
  if max < each
    max = each
  end
end

puts "The biggest number:" + max.to_s

numbers = [1, 2, 3, 4, 5, 6, 7]
new_numbers = []

for i in 0..(numbers.length-1) do
  new_numbers.unshift(numbers[i])
end

puts new_numbers
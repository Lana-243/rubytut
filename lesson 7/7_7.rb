alphabet_array = [*'a'..'z', *'A'..'Z', *'0'..'9']

token = ""

count = 1

while count < 9
  token += alphabet_array.sample
  count += 1
end

puts token

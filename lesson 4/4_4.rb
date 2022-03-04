options = [1, 0]

result = options.sample

third_option = rand(10)

if third_option == 2
  puts "Монетка встала на ребро"
elsif result == 0
  puts "Выпал орел"
else
  puts "Выпала решка!"
end

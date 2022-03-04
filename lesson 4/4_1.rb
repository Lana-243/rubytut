a = 222
b = 272

puts a
puts b

if a.to_f > b.to_f
  puts "The biggest number is " + a.to_s
elsif a.to_f < b.to_f
  puts "The biggest number is " + b.to_s
else
  puts "Numbers are the same!"
end   


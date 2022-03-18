$a = ""
b = ""

def method
  c = ""
  puts "Variable '$a': #{defined? ($a)}"
  puts "Variable 'b': #{defined? (b)}"
  puts "Variable 'c': #{defined? (c)}"
end

method
puts "Variable '$a': #{defined? ($a)}"
puts "Variable 'b': #{defined? (b)}"
puts "Variable 'c': #{defined? (c)}"


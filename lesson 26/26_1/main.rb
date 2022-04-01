require_relative 'lib/parent'
require_relative 'lib/child'

a = Parent.new("Anton")
b = Child.new("Boris")

puts "#{a.name} is #{a.obedience}"
puts "#{b.name} is #{b.obedience}"

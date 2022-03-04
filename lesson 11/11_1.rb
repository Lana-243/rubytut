def circle_square(radius)
  pi = 3.14157265
  square = pi * (radius**2)
  return square
end

puts "Please enter radius:"
radius = gets.to_f

puts "Radius is #{circle_square(radius)}"
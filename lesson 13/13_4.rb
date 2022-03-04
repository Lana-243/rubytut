class Chameleon
  def initialize(colour)
    @colour = colour
  end

  def colour
    return @colour
  end

  def colour=(new_colour)
    @colour = new_colour
  end
end

c1 = Chameleon.new("red")
puts "I am #{c1.colour}!"

c1.colour = "blue"
puts "I am #{c1.colour}!"

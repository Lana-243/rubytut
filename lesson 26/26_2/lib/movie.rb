class Movie < Item
  attr_reader :price, :quantity
  def initialize(price, quantity)
    super
  end

end

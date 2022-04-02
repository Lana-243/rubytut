class film < Item
  attr_reader :title, :price, :quantity
  def initialize(title, price, quantity)
    super
  end

end

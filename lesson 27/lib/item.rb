class Item
  attr_reader :title, :price, :quantity

  def initialize(title, price, quantity)
    @title = title
    @price = price
    @quantity = quantity
  end
end

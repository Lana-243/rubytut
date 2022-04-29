class Cart
  def initialize
    @items = []
  end

  def total
    @items.sum(&:price)
  end

  def <<(new_item)
    @items << new_item
  end

  def to_s
    @items.tally.map.with_index(1) do |(product, quantity), index|
      "#{index}. #{product}, quantity: #{quantity}"
    end.join("\n")
  end
end

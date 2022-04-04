class Item
  attr_accessor :price, :quantity

  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
  end

  def to_s
    "#{@price} rub. (#{@quantity} left)"
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end
end

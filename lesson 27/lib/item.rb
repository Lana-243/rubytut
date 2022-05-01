class Item
  attr_accessor :price, :quantity

  def self.from_file(file_path)
    raise NotImplementedError
  end

  def initialize(params)
    @price = params[:price].to_i
    @quantity = params[:quantity].to_i
  end

  def to_s
    "#{@price} rub. (#{@quantity} left)"
  end


end

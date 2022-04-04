class Book < Item
  attr_reader :title, :price, :quantity

  def initialize(title, genre, author, price, quantity)
    super(price, quantity)
    @title = title
    @genre = genre
    @author = author
  end

  def to_s
    "Book \"#{@title}\", #{@genre}, author - #{@author}, #{@price} rub. (#{@quantity} left)"
  end

end

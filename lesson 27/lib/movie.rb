class Movie < Item
  attr_reader :title, :genre, :director
  def initialize(title, genre, director, price, quantity)
    super(price, quantity)
    @title = title
    @genre = genre
    @director = director
  end

  def to_s
    "Movie \"#{@title}\", #{@genre}, director - #{@director}, #{@price} rub. (#{@quantity} left)"
  end

end

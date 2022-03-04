class Book
  def initialize(title, author, genre)
    @title = title
    @author = author
    @genre = genre
  end

  def info
    return "Book #{@title} written by #{@author}, genre: #{@genre}"
  end
end

gatsby = Book.new("The Great Gatsby", "F. Scott Fitzgerald", "novel")
odyssey = Book.new("The Odyssey", "Homer", "epic poem")
huckleberry = Book.new("The Adventures of Huckleberry Finn ", "Mark Twain", "children's novel")

puts gatsby.info
puts odyssey.info
puts huckleberry.info

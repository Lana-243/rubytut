require_relative 'lib/item'
require_relative 'lib/book'
require_relative 'lib/movie'

items = []

items << Book.new(
  title: "Happy Potter",
  genre: "Fantasy",
  author: "J. K. Rowling",
  price: 570,
  quantity: 2
)

items << Book.new(
  title: "Happy Potter2",
  genre: "Fantasy2",
  author: "J. K. Rowling2",
  price: 5702,
  quantity: 22
)

items << Movie.new(
  title: "Avatar",
  genre: "Fantasy",
  director: "J. Cameron",
  price: 700,
  quantity: 123
)

items.each { |item| puts item }

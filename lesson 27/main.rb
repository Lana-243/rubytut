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

film = Movie.new(title: 'Леон', director: 'Люк Бессон', price: 990)
film.quantity = 5

book = Book.new(title: 'Идиот', genre: 'роман', amount: 10)
book.author = 'Федька Достоевский'
book.author = 'Фёдор Достоевский'
book.price =  1500
puts film
puts book

require_relative 'lib/item'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/album'
require_relative 'lib/cart'
require_relative 'lib/item_collection'

collection = ItemCollection.from_dir("#{File.dirname(__FILE__)}/data")

collection.sort!(by: :title)

cart = Cart.new
answer = -1
until answer == "end" do
  collection.remove_out_of_stock!

  puts <<~COLLECTION
    Please enter what you would like to buy:
    #{collection}
    0. Exit
  COLLECTION

  answer = STDIN.gets.chomp

  if answer == "0"
    answer = "end"
    puts <<~RESULT
      You bought:
      #{cart}
      You need to pay #{cart.total} rub
    RESULT
  elsif (answer.to_i == 0) || (!(answer.to_i.between?(1, collection.to_a.length)))
    answer = -1
  else
    answer = answer.to_i
    picked_item = (collection.to_a)[answer-1]
    cart <<(picked_item)
    picked_item.quantity -= 1
    puts "You picked: #{picked_item}"
    puts "Total: #{cart.total} rub"
  end
end





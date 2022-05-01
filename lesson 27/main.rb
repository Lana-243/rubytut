require_relative 'lib/item'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/album'
require_relative 'lib/cart'
require_relative 'lib/item_collection'

collection = ItemCollection.from_dir("#{File.dirname(__FILE__)}/data")

collection.sort!(by: :title)

cart = Cart.new
answer = 0
until answer == "0" do
  collection.remove_out_of_stock!

  puts <<~COLLECTION
    Please enter what you would like to buy:
    #{collection}
    0. Exit
  COLLECTION

  answer = STDIN.gets.chomp

  if answer == "0"
    puts <<~RESULT
      You bought:
      #{cart}
      You need to pay #{cart.total} rub
    RESULT
  elsif ("0"..collection.items.size.to_s).member?(answer)
    answer = answer.to_i
    picked_item = (collection.to_a)[answer-1]
    cart << (picked_item)
    picked_item.quantity -= 1
    puts "You picked: #{picked_item}"
    puts "Total: #{cart.total} rub"
  end
end





require_relative 'lib/item'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/album'
require_relative 'lib/item_collection'

collection = ItemCollection.from_dir("#{File.dirname(__FILE__)}/data")

collection.sort!(by: :title)

cart = []
cart_total = 0
answer = -1
until answer == "end" do
  puts "Please enter what you would like to buy:"
  collection.to_a.each.with_index(1) do |item, index|
    puts "#{index}. #{item}"
  end
  puts "0. Exit"
  answer = STDIN.gets.chomp
  puts answer
  if answer == "0"
    answer = "end"
    puts "You bought:"
    cart.each { |item| puts item}
    puts "You need to pay #{cart_total} rub"
  elsif (answer.to_i == 0) || (!(answer.to_i.between?(1, collection.to_a.length)))
    answer = -1
  else
    answer = answer.to_i
    picked_item = (collection.to_a)[answer-1]
    cart_total += picked_item.price.to_i
    cart << picked_item
    puts "You picked: #{picked_item}"
    puts "Total: #{cart_total} rub"
    puts
  end
end





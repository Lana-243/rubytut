require_relative 'lib/item'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/item_collection'

collection = ItemCollection.from_dir("#{File.dirname(__FILE__)}/data")

collection.sort!(by: :price)

collection.to_a.each do |item|
  puts item
end




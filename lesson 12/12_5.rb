require 'open-uri'
require 'json'

def random_cat_fact
  data = URI.open("https://catfact.ninja/fact").read
  json = JSON.parse(data)

  return json["fact"]
end

puts "How many cat related facts do you need?"
facts_number = gets.to_i

facts_number.times do
  puts random_cat_fact
end
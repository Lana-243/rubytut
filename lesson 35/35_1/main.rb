require 'uri'
require 'net/http'
require 'rexml/document'
require_relative 'lib/forecast'

file_name = File.join(__dir__, '/data/city_url.xml')
file = File.new(file_name, "r:UTF-8")

begin
  doc_cities = REXML::Document.new(file)
rescue REXML::ParseException => e
  puts "XML file has errors in it"
  abort e.message
end

file.close

cities = {}
doc_cities.elements.each("cities/city") do |item|
  city_name = item.attributes["name"]
  city_url = item.attributes["url"]
  cities[city_name] = city_url
end

city_names = cities.keys

puts 'Which city would you like to have a forecast for?'
city_names.each.with_index(1) { |name, index| puts "#{index}: #{name}" }
city_index = STDIN.gets.to_i
until city_index.between?(1, city_names.size)
  city_index = gets.to_i
  puts "Enter a number from 1 to #{city_names.size}"
end

city_name = city_names[city_index - 1]
city_url = cities[city_name]

response = Net::HTTP.get_response(URI.parse(city_url))
doc = REXML::Document.new(response.body)

forecast_nodes = doc.root.elements['REPORT/TOWN'].elements.to_a

puts city_name
puts

forecast_nodes.each do |node|
  puts Forecast.from_xml(node)
  puts
end




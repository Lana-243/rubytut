require 'net/http'
require 'rexml/document'
require 'uri'

response = Net::HTTP.get_response(URI.parse("http://www.cbr.ru/scripts/XML_daily.asp"))
doc = REXML::Document.new(response.body)

doc.each_element('//Valute[@ID="R01235" or @ID="R01239"]') do |currency_tag|
  name = currency_tag.get_text('Name')
  value = currency_tag.get_text('Value')

  puts "#{name}: #{value} rub."
end

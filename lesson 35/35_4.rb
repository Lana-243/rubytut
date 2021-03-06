require 'net/http'
require 'rexml/document'

def dollars_to_balance(rub, usd, usd_to_rub)
  rub_in_usd = (rub/usd_to_rub)
  usd_difference = usd - rub_in_usd
  (usd_difference/2).to_f.round(2)
end

def buy_or_sell(wallet)
  wallet.positive? ?  "sell" :  "buy"
end

begin
response = Net::HTTP.get_response(URI.parse("http://www.cbr.ru/scripts/XML_daily.asp"))
doc = REXML::Document.new(response.body)
usd_to_rub = doc.elements['//Valute[@ID="R01235"]']
                .get_text('Value').to_s
                .gsub(",", ".").to_f
rescue SocketError
  puts "You have no internet connection"
  puts "Please enter data manually:"
  usd_to_rub = gets.to_f
end

puts "How many roubles do you have?"
input_rub = gets.to_f
puts "How many dollars do you have?"
input_usd = gets.to_f

changes = dollars_to_balance(input_rub, input_usd, usd_to_rub)

if changes.abs <= 0.01
  puts "Your portfolio is balanced!!"
else
  puts "You need  to #{buy_or_sell(changes)} #{changes.abs}$"
end

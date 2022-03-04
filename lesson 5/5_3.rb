puts "Какая у вас на руках валюта?"
puts "1. Рубли"
puts "2. Доллары"
answer = gets.to_i

if answer == 1
  puts "Сколько сейчас стоит 1 доллар в рублях?"
  usd_to_rub = gets.to_f.round(2)
  puts "Сколько  у вас рублей?"
  rub_in_pocket = gets.to_f.round(2)
  result = (rub_in_pocket / usd_to_rub).to_f.round(2)
  puts "Ваши запасы равны: $ " + result.to_s
elsif answer == 2
  puts "Сколько сейчас стоит 1 доллар?"
  rub_to_usd = gets.to_f.round(2)
  puts "Сколько  у вас долларов?"
  usd_in_pocket = gets.to_f.round(2)
  result = (usd_in_pocket * rub_to_usd).to_f.round(2)
  puts "Ваши запасы равны: " + result.to_s + " руб."
end

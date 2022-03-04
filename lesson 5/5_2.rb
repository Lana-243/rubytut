puts "Сколько сейчас стоит 1 доллар в рублях?"
exchange = gets.to_f.round(2)
puts "Сколько  у вас рублей?"
pocket_rub = gets.to_f.round(2)

result = (pocket_rub / exchange).to_f.round(2)

puts "Ваши запасы равны: $ " + result.to_s
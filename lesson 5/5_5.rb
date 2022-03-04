puts "Сколько сейчас стоит 1 доллар в рублях?"
usd_to_rub = gets.to_f

puts "Сколько у вас рублей?"
rub = gets.to_f
puts "Сколько у вас долларов?"
usd = gets.to_f

rub_in_usd = (rub/usd_to_rub).to_f
usd_difference = usd - rub_in_usd
to_change = (usd_difference/2).to_f.round(2).abs

if usd_difference.abs >= 0.01
  puts "Ваш портфель сбалансирован!"
elsif usd_difference > -0.01
  puts "Вам надо продать " + to_change.to_s + "$"
else 
  puts "Вам надо купить " + to_change.to_s + "$"
end
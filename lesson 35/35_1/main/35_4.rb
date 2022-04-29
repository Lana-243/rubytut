def dollars_to_balance(rub, usd, usd_to_rub)
  rub_in_usd = (rub/usd_to_rub)
  usd_difference = usd - rub_in_usd
  to_change = (usd_difference/2).to_f.round(2)
  return to_change
end

def buy_or_sell(wallet)
  wallet.positive? ? action = "продать" : action = "купить"
  return action
end


puts "Сколько сейчас стоит 1 доллар в рублях?"
input_usd_to_rub = gets.to_f
puts "Сколько у вас рублей?"
input_rub = gets.to_f
puts "Сколько у вас долларов?"
input_usd = gets.to_f

changes = dollars_to_balance(input_rub, input_usd, input_usd_to_rub)

if changes.abs <= 0.01
  puts "Ваш портфель сбалансирован!"
else
  puts "Вам надо #{buy_or_sell(changes)} #{changes.abs}$"
end

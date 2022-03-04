number = rand(0..15)
puts "Загадано число от 0 до 15, отгадайте какое?"

warm_more = "Тепло (нужно больше)"
warm_less = "Тепло (нужно меньше)"
cold_more = "Холодно (нужно больше)"
cold_less = "Холодно (нужно меньше)"
congrats = "Ура, вы выиграли!"


3.times do
  answer = gets.to_i
  difference = number-answer
  delta = difference.abs
  if delta <= 2
    difference.positive? ? (puts warm_more) : (puts warm_less)
  else 
    difference.positive? ? (puts cold_more) : (puts cold_less)
  end
end

puts "Было загадано число #{number}"


  

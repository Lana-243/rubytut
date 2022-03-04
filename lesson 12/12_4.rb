def bmi(weight, height)
  bmi = weight/(height**2)
  return bmi.round(2)
end

def answer(bmi)
  answer = case bmi
           when 0...16 then "Выраженный дефицит массы тела"
           when 16...18.5 then "Недостаточная (дефицит) масса тела"
           when 18.5...25 then "Норма" 
           when 25...30 then "Избыточная масса тела (предожирение)" 
           when 30...35 then "Ожирение 1 степени" 
           when 35...40 then "Ожирение 2 степени" 
           when 40..500 then "Ожирение 3 степени" 
           end
  return answer
end

puts "Введите ваш вес (в кг.):"
input_weight = gets.to_f

puts "Введите ваш рост (в м.):"
input_height = gets.to_f

user_bmi = bmi(input_weight, input_height)

puts "Ваш индекс: #{user_bmi}"
puts answer(user_bmi)


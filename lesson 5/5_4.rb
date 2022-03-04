museums = %w(
  третьяковка 
  новая третьяковка 
  музей автомобилей 
  музей криптографии
  музей каллиграфии
  выставка в пушкинском
  ) 

activities = %w(
  батуты
  сквош
  пробежка
  кино
)

restuarants = %w(
  японская кухня
  вьетнамская кухня
  итальянская кухня
  грузинская кухня
  корейская кухня
  фудкорт
)

puts "Hey hottie! What would you like to do today?"
puts "1. Something active"
puts "2. Maybe a cool museum?"
puts "3. I'm stariving"
puts "4. Let's relax"
activity_choice = gets.to_i

answer = "What about this?"
dots = "..."
answer2 = "Kidding. You have no choice here"

if activity_choice == 1
  result= activities.sample
  puts "What about this?"
  sleep(2)
  puts dots
  sleep(2)
  puts result
  sleep(2)
  puts dots
  sleep(2)
  puts answer2
elsif activity_choice == 2
  result = museums.sample
  puts "What about this?"
  sleep(2)
  puts dots
  sleep(2)
  puts result
  sleep(2)
  puts dots
  sleep(2)
  puts answer2
elsif activity_choice == 3
  puts "What about this?"
  sleep(2)
  puts dots
  sleep(2)
  puts result
  sleep(2)
  puts dots
  sleep(2)
  puts answer2
  result = museums.sample
elsif activity_choice == 4
  puts "Lets's hug then and get a lot of horrible food!"
end
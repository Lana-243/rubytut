car_brands = [
  "Toyota",
  "Kia",
  "Lada",
  "BMW",
  "Renault",
  "Bently",
  "Porche"
]

number_of_cars = car_brands.length
puts "We only have " + number_of_cars.to_s + " cars. Which one would you like to have?"
answer = gets.chomp.to_i

if answer > 0 && answer <= number_of_cars
  puts "Congrats! You go a:"
  puts car_brands[answer-1].to_s
else
  puts "Sorry, we do not have a car with such number!"
end
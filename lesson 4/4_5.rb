this_day = Time.now.wday

weekdays = [1, 2, 3, 4, 5]
weekend = [0, 6]

if weekdays.include?(2)
  puts "Go to work!"
elsif weekend.include?(this_day)
  puts "Get some rest!"
else
  puts "the end"
end
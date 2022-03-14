this_wday = Time.now.wday
this_day = Time.now.strftime("%d.%m")
weekends = [0, 6]

holiday_file = File.join(__dir__, '/data/holidays.txt')
holiday_list = File.readlines(holiday_file, chomp: true)
holiday_list.map { |date| date.chomp!}

if weekends.include?(this_wday) || holiday_list.include?(this_day)
  puts "Get some rest!"
else
  puts "Go back to work!"
end
require 'json'

file = File.read("#{__dir__}/data/business_card.json", encoding: 'UTF-8')

data_hash = JSON.parse(file)

first_name =  data_hash['first_name']
last_name = data_hash['last_name']
phone_number = data_hash['phone_number']
email = data_hash['email']
job_title = data_hash['job_title']

puts "#{first_name} #{last_name}"
puts "#{phone_number}, #{email}"
puts "#{job_title}"

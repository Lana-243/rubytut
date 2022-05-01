puts "This program will create a Business card depending on your data"
puts "Enter your full name"
name = STDIN.gets.chomp
puts "Enter your job title"
job = STDIN.gets.chomp
puts "Enter url of your photo"
photo_url = STDIN.gets.chomp
puts "Enter your phone number"
phone = STDIN.gets.chomp
puts "Enter your email"
email = STDIN.gets.chomp

template_path = File.join(__dir__, "template.html")

unless File.exist?(template_path)
  abort "We could not find the template! #{template_path}"
end

template = File.readlines(template_path, chomp:true)

template.each do |line|
  line.gsub!("%{name}", name)
  line.gsub!("%{job}", job)
  line.gsub!("%{photo_url}", photo_url)
  line.gsub!("%{phone}", phone)
  line.gsub!("%{email}", email)
end

file_path = File.join(__dir__, "business_card.html")
file = File.new(file_path, "w")

for item in template do
  file.puts(item)
end

file.close

puts "File with business card has been created!"

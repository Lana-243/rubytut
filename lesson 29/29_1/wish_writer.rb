require "rexml/document"
require "date"

puts "This chest contains all your wishes"
puts "What would you like to do?"
wish_text = STDIN.gets.chomp

puts "By what date would you like to fulfill this wish? (date format DD.MM.YYYY)"
date_input = STDIN.gets.chomp

expense_date = nil
begin
  wish_date = Date.parse(date_input)
rescue ArgumentError
  wish_date = Date.today
end

current_path = File.dirname(__FILE__)
file_name = current_path + "/wishes.xml"

file = File.new(file_name, "r:UTF-8")
doc = nil

begin
  doc = REXML::Document.new(file)
rescue REXML::ParseException => e
  puts "XML file has errors in it"
  abort e.message
end

file.close

wishes = doc.elements.find('wishes').first

wish = wishes.add_element 'wish', {
  'date' => wish_date.strftime('%Y.%m.%d')
}
wish.text = wish_text

file = File.new(file_name, "w:UTF-8")
doc.write(file, 2)
file.close

puts "Thank you! Your wish in the chest now"

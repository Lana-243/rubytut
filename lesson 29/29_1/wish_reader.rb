require "rexml/document"
require "date"
require_relative "wish"

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

wishes = []
doc.elements.each("wishes/wish") do |item|
  wish = item.text.strip
  date = item.attributes["date"]
  wishes << Wish.new(wish, date)
end

puts "These wishes were supposed to be finished by this day:"
wishes.each { |wish| puts "#{wish.date}: #{wish.text}" if wish.overdue }

puts "These wishes are still not overdue:"
wishes.each { |wish| puts "#{wish.date}: #{wish.text}" unless wish.overdue }

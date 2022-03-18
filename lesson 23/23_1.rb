number = 42
string_eng = "aeopcx"
string_rus = "аеорсх"

puts "Number #{number} uses #{number.size} bytes"
puts "String #{string_eng} uses #{string_eng.bytesize} bytes"
puts "String #{string_rus} uses #{string_rus.bytesize} bytes"
puts string_eng.encoding
puts string_rus.encoding


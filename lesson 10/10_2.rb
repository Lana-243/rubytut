current_path = File.dirname(__FILE__)

eyes_file = '/data/eyes.txt'
nose_file = '/data/nose.txt'
forehead_file = '/data/forehead.txt'
mouth_file = '/data/mouth.txt'


eyes_path = current_path + eyes_file
nose_path = current_path + nose_file
forehead_path = current_path + forehead_file
mouth_path = current_path + mouth_file

if File.exist?(eyes_path)
  f = File.new(eyes_path)
  eyes = f.readlines.sample
  f.close
else
  puts "No such file: #{eyes_path}"
end

if File.exist?(nose_path)
  f = File.new(nose_path)
  nose = f.readlines.sample
  f.close
else
  puts "No such file: #{nose_path}"
end

if File.exist?(forehead_path)
  f = File.new(forehead_path)
  forehead = f.readlines.sample
  f.close
else
  puts "No such file: #{forehead_path}"
end

if File.exist?(mouth_path)
  f = File.new(mouth_path)
  mouth = f.readlines.sample
  f.close
else
  puts "No such file: #{mouth_path}"
end

puts forehead
puts eyes
puts nose
puts mouth

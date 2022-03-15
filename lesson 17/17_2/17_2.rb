current_path = File.dirname(__FILE__)

face_files = ['/data/forehead.txt', '/data/eyes.txt', '/data/nose.txt', '/data/mouth.txt']
face_paths = face_files.map { |file| current_path + file}
face = []
face_paths.each_with_index do |face_part, index|
  f = File.new(face_part)
  face << f.readlines.sample
  f.close
end

file_name = "face_#{Time.now.strftime("%d.%m.%Y")}_#{Time.now.strftime("%H.%M.%S")}"
file = File.new("#{current_path}/#{file_name}.txt")

face.each do |face_part|
  file.puts(face_part)
end

file.close

puts "File #{file_name}.txt has been created!"

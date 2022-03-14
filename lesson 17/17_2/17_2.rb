day_today= Time.now.strftime("%d.%m.%Y")
time_now = Time.now.strftime("%H:%M:%S")

current_path = File.dirname(__FILE__)

forehead_file = '/data/forehead.txt'
eyes_file = '/data/eyes.txt'
nose_file = '/data/nose.txt'
mouth_file = '/data/mouth.txt'

face_files = [forehead_file, eyes_file, nose_file, mouth_file]
face_paths = face_files.map { |file| current_path + file}
face = []
face_paths.each_with_index do |face_part, index|
  if File.exist?(face_part)
    f = File.new(face_part)
    face << f.readlines.sample
    f.close
  else
    puts "No such file: #{face_files[index]}"
  end
end

file_name = "face_#{day_today}_#{time_now}"
file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")

face.each do |face_part|
  file.puts(face_part)
end

file.close

puts "File #{file_name}.txt has been created!"
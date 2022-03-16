current_path = File.dirname(__FILE__)

face_files = ['forehead', 'eyes', 'nose', 'mouth']
face_paths = face_files.map { |file| "#{current_path}/data/#{file}.txt"}
face = []

face = face_paths.map do |face_part|
          f = File.new(face_part)
          face_part = f.readlines.sample
          f.close
        end

file_name = Time.now.strftime("face_%d.%m.%Y_%H.%M.%S")
file = File.new("#{current_path}/#{file_name}.txt", "w")

face.each do |face_part|
  file.puts(face_part)
end

file.close

puts "File #{file_name}.txt has been created!"

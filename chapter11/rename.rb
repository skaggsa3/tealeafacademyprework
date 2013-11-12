puts "What type of files are you looking for? jpg, bmp, or tif"
file_type = gets.chomp
files = Dir["*.#{file_type}"]

puts "what extension would you like to add to these files?"
ext = gets.chomp

files.each do |f|
	old_ext = File.extname(f)
	stripped_file = f.delete(old_ext)
	new_name = stripped_file + "." + ext

	if File.exists?(new_name)
		puts "#{new_name} already exists"
		next
	else
		File.rename f, new_name
	end
end



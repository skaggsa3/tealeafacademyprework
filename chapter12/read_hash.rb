def read_file(file)
	if !File.exist?(file)
		puts "Come back when you get a good file name"
		exit
	end
	
	f = File.open(file, "r")
	births = {}

	f.each do |l|
		one, two = l.split(',', 2)
		births[one] = two
	end

	f.close
	births
end 

puts "Please give me the name of the file to populate the birthday hash"
f = gets.chomp
birthdays = read_file(f)

while true
	puts "Please give me a name and I'll give you the birthdate"
	name = gets.chomp

	if birthdays.has_key?(name)
		puts "#{name}'s birthdate is #{birthdays[name]}"
		puts "Would you like to verify another birthday? yes or no"
		ans = gets.chomp.downcase
		if ans == "yes"
			next
		else
			puts "Thats cool, come back when you need the info."
			break
		end
	else
		puts "Please give me a name that exists in the births.txt file\n"
	end
end


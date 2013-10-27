puts "Please give me a starting year"
start = gets.chomp.to_i

puts "Please give me an ending year"
ending = gets.chomp.to_i

(start..ending).each do |year|
	if year % 100 == 0
		if year % 400 == 0
			puts "#{year} is a leap year"
		end
		next
	elsif  year % 4 == 0 
		puts "#{year} is a leap year"
	end
end
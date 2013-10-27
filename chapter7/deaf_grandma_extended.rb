puts "Lets say hi to grandma!"

while true
	greeting = gets.chomp

	if greeting == greeting.upcase
		r_num = Random.new
		puts "NO, NOT SINCE #{r_num.rand(1930..1950)}"
		if greeting == "BYE" * 3
			break
		end
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
end

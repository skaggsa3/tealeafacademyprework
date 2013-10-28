puts "Please help us build the array - Type in as many words as you want and we'll store them in an array to be read back to you"

words_a = []

while true
	words = gets.chomp
	
	if words.empty?
		break
	end

	words_a.push words
end

words_a.sort!
words_a.each {|w| puts w}

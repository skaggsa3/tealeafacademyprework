def shuffle_it_up words
	shuffled = []

	while words.length != 0
		s = words.sample
		i = words.index(s)

		shuffled.push(s)
		words.delete_at(i)
	end
	shuffled
end

the_list = []
shuffled = []
puts "Give me a list of strings or numbers in order and we'll shuffle it up"

while true
	the_word = gets.chomp

	if the_word.empty?
		break
	end

	the_list.push(the_word)
end

puts "Alright, lets shuffle it up"
shuffled = shuffle_it_up(the_list)

puts "Here is your shuffled list: #{shuffled}"

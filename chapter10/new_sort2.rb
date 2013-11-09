def my_sort words
	sorted = []

	while words.length != 0
		inserted_val = words.min
		index_val = words.index(inserted_val)

		sorted.push(inserted_val)

		words.delete_at(index_val)
	end
	#p sorted.sort
	sorted
end

words = []

puts "Please help me build an array so I can test my new sorting algorithm"

while true
	w = gets.chomp

	if w.empty?
		break
	end

	words.push(w)
end

puts "Thank you, lets sort this thing"
sorted_words = my_sort words

p sorted_words
 


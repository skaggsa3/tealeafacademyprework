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

puts "Welcome, please give me a directory to search for your mp3 files"
d_to_search = gets.chomp

if Dir.exists?(d_to_search)
	puts "Changing directory to #{d_to_search}"
	Dir.chdir(d_to_search)
else
	puts "Come back when you can give me a valid directory to search :)...."
	exit
end

results = Dir["*.mp3"]
shuffled_results = shuffle_it_up(results)

the_playlist = File.open("playlist.m3u", "w")

shuffled_results.each do |f|
	the_playlist.write("#{f}\n")
end

the_playlist.close

puts "Your playlist has been created and shuffled."


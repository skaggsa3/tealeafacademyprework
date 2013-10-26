puts "Welcome to the 99 bottles of beer song!\n\n"

bottles = 99

while bottles > 0
	puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer"
	print "Take one down and pass it around, "
	bottles -= 1
	puts "#{bottles} bottles of beer on the wall!\n\n"

	if bottles == 1
		puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer"
		print "Take one down and pass it around, No more bottles of beer on the wall!\n\n"
		break
	end
end

puts "No more bottles of beer on the wall, no more bottles of beer. "
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
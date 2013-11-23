class Die
	def initialize
		roll
	end

	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end

	def cheating sides
		@number_showing = sides
		if @number_showing > 6
			puts "no no no, your cheating!"
		else
			showing
		end
	end
end

puts Die.new.showing
puts Die.new.cheating(7) #---> Will fail
puts Die.new.cheating(3)
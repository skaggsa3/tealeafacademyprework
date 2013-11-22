class Array
	def shuffle_it_up 
		shuffled = []

		while self.length != 0
			s = self.sample
			i = self.index(s)

			shuffled.push(s)
			self.delete_at(i)
		end
		shuffled
	end
end

puts [1,2,3,4,5].shuffle_it_up
